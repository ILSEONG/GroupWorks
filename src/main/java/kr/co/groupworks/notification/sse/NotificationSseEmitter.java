package kr.co.groupworks.notification.sse;

import kr.co.groupworks.employee.entity.Employee;
import kr.co.groupworks.employee.repository.EmployeeRepository;
import kr.co.groupworks.notification.dto.NotificationDTO;
import kr.co.groupworks.notification.model.Notification;
import kr.co.groupworks.notification.service.NotificationService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

@Slf4j
@Component
@RequiredArgsConstructor
public class NotificationSseEmitter {
    private final Map<Long, SseEmitter> sseEmitters = new ConcurrentHashMap<>();
    private final EmployeeRepository employeeRepository;

    // 사용자 연결 처리
    public SseEmitter connect(Long employeeId) {
        SseEmitter sseEmitter = new SseEmitter(Long.MAX_VALUE);
        sseEmitters.put(employeeId, sseEmitter);

        // 연결 완료 시 사용자 제거
        sseEmitter.onCompletion(() -> sseEmitters.remove(employeeId));

        // 연결 시간 초과 시 사용자 제거
        sseEmitter.onTimeout(() -> sseEmitters.remove(employeeId));

        log.info("NotificationSseEmitter employee {}", employeeId);
        return sseEmitter;
    }

    // 알림 전송
    public void sendNotification(Long receiverId, NotificationDTO notificationDTO) {
        SseEmitter sseEmitter = sseEmitters.get(receiverId);

        // SSE 연결이 있는 경우에만 알림 전송
        if (sseEmitter != null) {
            try {
                sseEmitter.send(notificationDTO);
            } catch (IOException e) {
                sseEmitters.remove(receiverId);
            }
        }
    }

    // 다수 수신자에게 알림 전송
    public void sendNotificationsToMultipleUsers(List<Long> receiverIds, NotificationDTO notificationDTO) {
        for (Long receiverId : receiverIds) {
            SseEmitter sseEmitter = sseEmitters.get(receiverId);

            if (sseEmitter != null) {
                try {
                    sseEmitter.send(notificationDTO);
                } catch (IOException e) {
                    sseEmitters.remove(receiverId);
                    log.error("Failed to send notification to employee {}", receiverId, e);
                }
            } else {
                log.warn("No active SSE connection found for employee {}", receiverId);
            }
        }
    }

    // 부서 ID를 이용해 부서에 속한 모든 사용자에게 알림 전송
    public void sendNotificationsToDepartment(Long departmentId, NotificationDTO notificationDTO) {
        // 부서에 속한 사용자 목록 조회
        List<Employee> employees = employeeRepository.findEmployeeByDepartment_DepartmentId(departmentId);

        // 사용자 ID 목록 생성
        List<Long> employeeIds = employees.stream()
                .map(Employee::getEmployeeId)
                .collect(Collectors.toList());

        // 알림 전송
        sendNotificationsToMultipleUsers(employeeIds, notificationDTO);
    }
}

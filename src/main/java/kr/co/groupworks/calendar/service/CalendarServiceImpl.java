package kr.co.groupworks.calendar.service;

import jakarta.persistence.EntityNotFoundException;
import kr.co.groupworks.calendar.dto.CalendarFormDTO;
import kr.co.groupworks.calendar.entity.Calendar;
import kr.co.groupworks.calendar.repository.CalendarRepository;
import kr.co.groupworks.common.mapper.CalendarMapper;
import kr.co.groupworks.employee.entity.Employee;
import kr.co.groupworks.employee.repository.EmployeeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class CalendarServiceImpl implements CalendarService {
    private final CalendarRepository calendarRepository;
    private final EmployeeRepository employeeRepository;
    private final CalendarMapper calendarMapper;
    @Override
    public Long saveCalendar(CalendarFormDTO calendarFormDTO, Long employeeId) {
        Employee employee = employeeRepository.findById(employeeId)
                .orElseThrow(() -> new EntityNotFoundException("사원을 찾을 수 없습니다. " + employeeId));

        Calendar calendar = calendarMapper.toEntity(calendarFormDTO, employee);
        return calendarRepository.save(calendar).getCalendarId();

    }

    @Override
    public List<CalendarFormDTO> findAllCalendar() {
        return calendarRepository.findAll().
                stream()
                .map(calendarMapper::toDto).toList();
    }
}

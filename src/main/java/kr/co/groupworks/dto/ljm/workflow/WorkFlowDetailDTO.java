package kr.co.groupworks.dto.ljm.workflow;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import kr.co.groupworks.entity.ljm.WorkFlowEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.time.format.DateTimeFormatter;

@Getter @Setter @ToString
@Accessors(chain = true)
@NoArgsConstructor
public class WorkFlowDetailDTO {
    // 1, 결재 요청 pk
    private int id;

    // 2, 기안자 사원번호 fk
    private int employeeId;
    // 3, 기안자 이메일
    private String email;
    // 4, 기안자 직급
    private String employeeRank;
    // 5, 기안자 소속번호
    private Integer departmentId;
    // 6, 기안자 소속명
    private String department;
    // 7, 기안자 명
    private String employeeName;

    @NotEmpty @NotNull
    // 8, 결재 기안 코드
    private String code;
    @NotEmpty @NotNull
    // 9, 결재 요청 분류
    private String workFlowType;
    @NotEmpty @NotNull
    // 10, 결재 명
    private String title;
    // 11, 결재 내용
    private String description;
    @NotEmpty @NotNull
    // 12, 결재 요청 일
    private String draftDate;
    // 13, 최종 결재 일
    private String approvalDate;

    // 14, 최종 결재자 직급
    private String finalApprovalRank;
    // 15, 최종 결재자 소속
    private String finalApprovalDepartment;
    // 16, 최종 결재자 명
    private String finalApprovalName;

    @NotNull
    // 17, 결재 인원
    private int approverCount;
    // 18, 승인된 수
    private int approvalCount;
    // 19, 비용 청구
    private int cost;
    // 20, 최종 승인여부
    private String status;

    public WorkFlowDetailDTO entityToDto(WorkFlowEntity workFlowEntity) {
        String drftDate = workFlowEntity.getDraftDate().format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));
        String approvalDate = null;

        if(workFlowEntity.getApprovalDate() != null) {
            approvalDate = workFlowEntity.getApprovalDate().format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));
        }

        return new WorkFlowDetailDTO()
                // pk
                .setId(workFlowEntity.getId())
                // fk
                .setEmployeeId(workFlowEntity.getEmployeeId())
                .setEmail(workFlowEntity.getEmail())
                .setEmployeeRank(workFlowEntity.getEmployeeRank())
                .setDepartmentId(workFlowEntity.getDepartmentId())
                .setDepartment(workFlowEntity.getDepartment())
                .setEmployeeName(workFlowEntity.getEmployeeName())

                .setCode(workFlowEntity.getCode())
                .setWorkFlowType(workFlowEntity.getWorkFlowType())
                .setTitle(workFlowEntity.getTitle())
                .setDescription(workFlowEntity.getDescription())
                .setDraftDate(drftDate)
                .setApprovalDate(approvalDate)

                .setFinalApprovalRank(workFlowEntity.getFinalApprovalRank())
                .setFinalApprovalDepartment(workFlowEntity.getFinalApprovalDepartment())
                .setFinalApprovalName(workFlowEntity.getFinalApprovalName())

                .setApproverCount(workFlowEntity.getApproverCount())
                .setApprovalCount(workFlowEntity.getApprovalCount())
                .setCost(workFlowEntity.getCost())
                .setStatus(workFlowEntity.getStatus())
                ;
    }

    public WorkFlowEntity dtoToEntity() {
        /* draftDate=2024-07-12T04:58 */
        return new WorkFlowEntity()
                .setId(id)
                .setEmployeeId(employeeId)
                .setEmail(email)
                .setEmployeeRank(employeeRank)
                .setDepartmentId(departmentId)
                .setDepartment(department)
                .setEmployeeName(employeeName)
                .setCode(code)
                .setWorkFlowType(workFlowType)
                .setTitle(title)
                .setDescription(description)
                ;
    }
}

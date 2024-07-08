package kr.co.groupworks.dto.workflow;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Accessors;

@Getter @Setter @ToString
@Accessors(chain = true)
@NoArgsConstructor
public class WorkFlowDTO {
    // 1, 결재 요청 pk
    private String id;
    // 2, 기안자 사원번호 fk
    private int employeeId;
    // 3, 기안자 이메일
    private String email;
    // 4, 기안자 직급
    private String employeeRank;
    // 5, 기안자 소속명
    private String department;
    // 6, 기안자 명
    private String employeeName;
    // 7, 결재 요청 코드
    private String code;
    @NotEmpty @NotNull
    // 8, 결재 요청 분류
    private String workFlowType;
    @NotEmpty @NotNull
    // 9, 결재 명
    private String title;
    // 10, 결재 내용
    private String description;
    @NotEmpty @NotNull
    // 11, 결재 요청 일
    private String draftDate;
    // 12, 최종 결재 일
    private String approvalDate;
    @NotNull
    // 13, 결재 인원
    private int approverCount;
    // 14, 승인된 수
    private int approvalCount;
    // 15, 비용 청구
    private int cost;
    // 16, 최종 승인여부
    private String status;
}

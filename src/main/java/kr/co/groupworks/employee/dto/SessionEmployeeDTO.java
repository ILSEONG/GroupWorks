package kr.co.groupworks.employee.dto;

import kr.co.groupworks.department.dto.DepartmentDTO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@Builder
@Accessors(chain = true)
@AllArgsConstructor
@NoArgsConstructor
public class SessionEmployeeDTO {
    //  사원번호 pk
    private Long employeeId;
    //  사원명
    private String employeeName;
    //  이메일
    private String email;
    //  부서
    private DepartmentDTO department;
}

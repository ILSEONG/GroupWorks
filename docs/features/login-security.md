# 로그인과 보안

## 구현 목표

로그인 기능은 단순히 아이디와 비밀번호를 비교하는 기능이 아닙니다.
실제 서비스에서는 인증이 필요한 페이지와 아닌 페이지를 구분하고, 로그인 성공/실패 처리, 세션 관리, 로그아웃, 비밀번호 암호화까지 함께 고려해야 합니다.

GroupWorks에서는 이런 인증/인가 흐름을 안정적으로 처리하기 위해 Spring Security를 사용했습니다.

## 왜 Spring Security를 사용했는가?

직접 로그인 필터와 세션 검증 로직을 만들 수도 있지만, 보안 기능을 직접 구현하면 실수할 가능성이 큽니다.
Spring Security를 사용하면 다음 기능을 표준적인 방식으로 처리할 수 있습니다.

- 인증이 필요한 URL 보호
- 로그인 성공/실패 처리
- 로그아웃 처리
- 세션 관리
- 정적 리소스 예외 처리
- 비밀번호 암호화 연동

## 로그인 요청 흐름

```text
사용자 로그인 요청
→ Spring Security Filter Chain 진입
→ /loginProc 요청으로 인증 처리
→ 인증 성공 시 /main으로 이동
→ 인증 실패 시 /?error=true로 이동
→ 로그인 이후 인증이 필요한 페이지 접근 가능
```

## 주요 설정

`SecurityConfig`에서는 BCryptPasswordEncoder를 Bean으로 등록하고, 로그인 페이지와 로그인 처리 URL을 설정했습니다.

```java
@Bean
public BCryptPasswordEncoder bCryptPasswordEncoder() {
    return new BCryptPasswordEncoder();
}
```

```java
.formLogin(auth -> auth
        .loginPage("/")
        .loginProcessingUrl("/loginProc")
        .defaultSuccessUrl("/main", true)
        .failureUrl("/?error=true")
)
```

여기서 중요한 점은 로그인 화면 URL과 로그인 처리 URL이 다르다는 것입니다.

- `/`: 사용자가 보는 로그인 화면
- `/loginProc`: Spring Security가 인증을 처리하는 URL

따라서 `/loginProc`를 처리하는 컨트롤러를 직접 만들 필요가 없습니다.

## 왜 BCrypt를 사용했는가?

비밀번호는 절대 평문으로 저장하면 안 됩니다.
DB가 유출되었을 때 사용자의 비밀번호가 그대로 노출되기 때문입니다.

BCrypt는 비밀번호 저장에 자주 사용되는 단방향 해시 알고리즘입니다.
Salt를 자동으로 적용하고, 연산 비용을 조절할 수 있어 무차별 대입 공격에 비교적 강합니다.

사원 정보를 저장할 때는 입력받은 비밀번호를 BCrypt로 암호화한 뒤 저장했습니다.

```java
String encPassword = bCryptPasswordEncoder.encode(employeeDTO.getEmployeePW());
employeeDTO.setEmployeePW(encPassword);
```

비밀번호 변경 시에는 사용자가 입력한 현재 비밀번호와 DB에 저장된 암호화 비밀번호를 `matches()`로 비교했습니다.

## 구현하면서 헷갈릴 수 있는 점

Spring Security를 처음 사용할 때는 로그인 처리 URL을 컨트롤러에서 직접 받아야 한다고 생각하기 쉽습니다.
하지만 `loginProcessingUrl()`로 지정한 URL은 Spring Security Filter가 처리합니다.

또한 비밀번호 비교 시에는 암호화된 값을 다시 복호화하는 것이 아니라, 사용자가 입력한 비밀번호를 BCrypt 알고리즘으로 비교해야 합니다.

## 장점

- 인증/인가 로직을 표준 방식으로 처리할 수 있었습니다.
- BCrypt를 통해 비밀번호를 안전하게 저장할 수 있었습니다.
- 로그인 성공, 실패, 로그아웃 흐름을 일관되게 관리할 수 있었습니다.

## 아쉬운 점과 개선 방향

- 현재 CSRF를 비활성화한 상태라 실제 운영 환경에서는 CSRF 보호 전략을 다시 고민해야 합니다.
- 권한별 접근 제어를 더 세분화하면 좋습니다.
- API 중심 서비스로 확장한다면 JWT 기반 인증도 비교해볼 수 있습니다.

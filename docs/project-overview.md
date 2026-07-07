# 프로젝트 소개

## GroupWorks란?

GroupWorks는 기업의 다양한 부서를 하나의 통합 시스템에서 관리하기 위한 ERP 프로젝트입니다.
게시판, 전자결재, 메일, 화상회의, 휴가, 일정, 알림, 자재/재고 관리 등 실제 회사 업무에서 자주 사용하는 기능을 하나의 서비스 안에 통합하는 것을 목표로 했습니다.

## 내가 담당한 기능

최일성(ILSEONG)은 프로젝트에서 다음 기능을 담당했습니다.

- 로그인
- 화상회의
- 이메일
- 마이페이지
- 내 정보 수정
- 조직도 / 연락망

## 사용 기술

프로젝트는 Spring Boot 기반으로 개발했으며 Java 17을 사용했습니다.
담당 기능과 관련해 주로 사용한 기술은 다음과 같습니다.

| 영역 | 사용 기술 |
| --- | --- |
| Backend | Spring Boot, Java 17 |
| View | Thymeleaf |
| 인증/보안 | Spring Security, BCrypt |
| Database | MySQL, MongoDB |
| ORM/Data Access | Spring Data JPA, Spring Data MongoDB |
| 실시간 통신 | WebSocket, WebRTC |
| 외부 API | CoolSMS |
| 설정값 암호화 | Jasypt |

## 왜 GitHub Pages 문서로 정리했는가?

Velog 같은 블로그 플랫폼에 하나의 글로 정리할 수도 있지만, GroupWorks는 기능 단위로 설명할 내용이 많습니다.
따라서 GitHub Pages에서는 다음과 같이 문서를 나누었습니다.

- 프로젝트 소개
- 기능별 구현 설명
- 전체 회고와 개선점

이렇게 나누면 읽는 사람이 필요한 기능만 골라서 볼 수 있고, 나중에 기능별로 문서를 추가하거나 수정하기도 쉽습니다.

## 문서 읽는 순서

처음 보는 사람이라면 아래 순서로 읽는 것을 추천합니다.

1. [프로젝트 소개](./project-overview.md)
2. [로그인과 보안](./features/login-security.md)
3. [이메일](./features/mail.md)
4. [화상회의](./features/video-conference.md)
5. [마이페이지와 내 정보 수정](./features/mypage-profile.md)
6. [조직도와 연락망](./features/organization.md)
7. [마무리 정리](./conclusion.md)

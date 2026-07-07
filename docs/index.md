# GroupWorks 기술 문서

최일성(ILSEONG)이 GroupWorks 프로젝트에서 담당한 기능을 GitHub Pages 문서 형태로 정리한 공간입니다.

## 문서 구성

1. [프로젝트 소개](./project-overview.md)
2. 기능별 구현 정리
   - [로그인과 보안](./features/login-security.md)
   - [이메일](./features/mail.md)
   - [화상회의](./features/video-conference.md)
   - [마이페이지와 내 정보 수정](./features/mypage-profile.md)
   - [조직도와 연락망](./features/organization.md)
3. [마무리 정리](./conclusion.md)

## 핵심 키워드

- Spring Boot
- Spring Security
- BCrypt
- MongoDB
- WebRTC
- WebSocket
- CoolSMS
- Jasypt
- Thymeleaf
- Spring Data JPA

## GitHub Pages 설정 방법

이 문서는 `docs` 디렉터리를 기준으로 작성되었습니다. GitHub 저장소의 Pages 설정에서 다음과 같이 지정하면 됩니다.

```text
Settings → Pages → Build and deployment
Source: Deploy from a branch
Branch: main
Folder: /docs
```

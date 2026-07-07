# 화상회의 기능

## 구현 목표

화상회의 기능은 사용자가 회의방을 생성하거나 기존 회의방에 참여해 실시간으로 음성, 영상, 화면 공유를 사용할 수 있도록 만든 기능입니다.

## 왜 WebRTC를 사용했는가?

화상회의는 브라우저 간 실시간 음성/영상 통신이 필요합니다.
서버가 모든 영상 데이터를 중계하는 방식으로 만들면 서버 부하가 커질 수 있습니다.

WebRTC는 브라우저 간 P2P 기반 실시간 통신을 지원합니다.
그래서 영상과 음성 스트림은 WebRTC로 처리하고, 연결을 맺기 위한 시그널링에는 WebSocket을 사용했습니다.

## 왜 WebSocket이 필요한가?

WebRTC는 실제 미디어 스트림을 주고받는 기술입니다.
하지만 브라우저끼리 연결을 시작하려면 서로의 연결 정보를 교환해야 합니다.

이때 필요한 정보가 다음과 같습니다.

- offer
- answer
- ICE candidate
- roomId
- camKey

이 정보를 교환하는 과정을 signaling이라고 합니다.
WebRTC 자체는 signaling 방법을 정해주지 않기 때문에 직접 signaling 서버를 구현해야 합니다.

## WebRTC 연결 흐름

```text
사용자 A                         서버                         사용자 B
   |                              |                              |
   | ---- offer ----------------> |                              |
   |                              | ---- offer ----------------> |
   |                              | <---- answer --------------- |
   | <---- answer --------------- |                              |
   | ---- ICE Candidate --------> |                              |
   |                              | ---- ICE Candidate --------> |
   | <========= WebRTC P2P Media Stream =========>              |
```

## 서버 측 시그널링 흐름

```text
클라이언트가 offer 전송
→ /peer/offer/{camKey}/{roomId} WebSocket 메시지 처리
→ 같은 topic을 구독 중인 사용자에게 offer 전달
→ 상대방이 answer 전송
→ /peer/answer/{camKey}/{roomId} WebSocket 메시지 처리
→ ICE candidate 정보도 같은 방식으로 교환
→ WebRTC P2P 연결 수립
```

Spring WebSocket의 `@MessageMapping`과 `@SendTo`를 사용해 offer, answer, ICE candidate를 전달했습니다.

## 회의방 생성 흐름

```text
사용자가 회의방 생성
→ 클라이언트에서 roomId 생성
→ /videoConference/rooms POST 요청
→ 서버에서 roomId 저장
→ 다른 사용자가 roomId 입력
→ /videoConference/rooms/{roomId} GET 요청
→ 방 존재 여부 확인
→ 존재하면 회의방 입장
```

방 생성과 방 존재 여부 확인은 REST API로 처리했습니다.
방 목록은 `ConcurrentHashMap.newKeySet()`을 사용해 관리했습니다.
여러 사용자가 동시에 방 생성이나 확인 요청을 할 수 있으므로 일반 HashSet보다 동시성에 안전한 자료구조를 선택했습니다.

## 구현하면서 헷갈렸던 점

처음에는 WebRTC를 사용하면 브라우저끼리 바로 연결될 줄 알았습니다.
하지만 실제로는 브라우저끼리 연결을 시작하기 전에 서로의 SDP 정보와 ICE Candidate를 교환해야 했습니다.

정리하면 다음과 같습니다.

```text
WebRTC
→ 실제 음성/영상 데이터를 주고받는 기술

WebSocket
→ WebRTC 연결을 시작하기 위한 offer, answer, ICE candidate를 전달하는 기술
```

이 차이를 이해하고 나니 WebRTC 구조가 훨씬 명확해졌습니다.

## 장점

- 브라우저 기반 실시간 화상회의 기능을 구현했습니다.
- WebRTC와 WebSocket의 역할 차이를 이해할 수 있었습니다.
- REST API와 WebSocket을 함께 사용하는 구조를 경험했습니다.
- signaling 서버의 필요성을 직접 경험했습니다.

## 아쉬운 점과 개선 방향

- 현재 방 정보가 메모리에 저장되므로 서버가 재시작되면 방 정보가 사라집니다.
- 운영 환경에서는 Redis 같은 저장소를 사용해 방 상태를 관리하는 것이 더 좋습니다.
- NAT 환경, TURN 서버, 다자간 회의 성능 문제까지 고려하면 더 복잡한 설계가 필요합니다.
- 대규모 화상회의에는 SFU 같은 미디어 서버 도입을 고려해야 합니다.

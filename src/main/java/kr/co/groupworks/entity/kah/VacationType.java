package kr.co.groupworks.entity.kah;

import lombok.Getter;

@Getter
public enum VacationType {
    // 연차
    ANNUAL("\uD83C\uDF34 연차"),
    // 병가
    SICK("\uD83D\uDC8A 병가"),
    // 기타
    OTHER("\uD83D\uDCBC 기타"),
    // 반차
    HALF("\uD83D\uDD52 반차");

    private final String description;

    VacationType(String description) {
        this.description = description;
    }
}

package kr.co.groupworks.repository.kah;

import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
public class VacationRepositoryImpl implements VacationRepositoryQueryDsl {
    private final JPAQueryFactory queryFactory;

}

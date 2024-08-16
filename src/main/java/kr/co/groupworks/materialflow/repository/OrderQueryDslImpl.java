package kr.co.groupworks.materialflow.repository;

import com.querydsl.core.Tuple;
import com.querydsl.jpa.impl.JPAQueryFactory;
import jakarta.persistence.EntityManager;
import kr.co.groupworks.materialflow.dto.MesListVO;
import kr.co.groupworks.materialflow.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class OrderQueryDslImpl extends QuerydslRepositorySupport implements OrderQueryDsl {
    private final JPAQueryFactory queryFactory;

    @Autowired
    public OrderQueryDslImpl(EntityManager entityManager) {
        super(Order.class);
        this.queryFactory = new JPAQueryFactory(entityManager);
    }

    @Override
    public List<Order> findByOrderCodeAndItemCodeAndItemName(String orderCode, String itemCode, String itemName) {
        if(itemName == null || itemName.isEmpty()) return findByItemName(orderCode, itemCode, itemName);
        return findByOrderCodeOrItemCode(orderCode, itemCode);
    }

    @Override
    public List<Order> findByBomList() {
        QOrder o = QOrder.order;
        QBom b = QBom.bom;

        return queryFactory
                .select(o)
                .from(o).leftJoin(o.boms, b)
                .fetchJoin().fetch();
    }

    @Override
    public boolean orderDeleteCheck(Long orderId) {
        QOrder o = QOrder.order;
        QBom b = QBom.bom;
        QMes m = QMes.mes;
        QMaterialItem i = QMaterialItem.materialItem;

        Long result = queryFactory
                .select(o.count()).from(o)
                .leftJoin(b).on(b.orderId.eq(o.id))
                .leftJoin(m).on(m.orderId.eq(o.id))
                .leftJoin(i).on(i.bomId.eq(b.id))
                .leftJoin(i).on(i.bomId.eq(m.id))
                .where(o.id.eq(orderId).and(i.itemStatus.isNotNull()))
                .fetchJoin().fetchOne();
                // `fetchOne()`은 단일 결과(개수)를 반환

        return result != null && result > 0;
    }

    @Override
    public boolean orderCompleteCheck(Long bomId, int isStat) {
        QMaterialItem i = QMaterialItem.materialItem;

        if(isStat < 1 || 2 < isStat) return false;
        Long n = queryFactory
                .select(i.id.count()).from(i)
                .where(i.bomId.eq(bomId).and(i.itemStatus.isNull().or(
                        i.itemStatus.eq(isStat == 1 ? ItemStatus.ISSUING : ItemStatus.STOCK_ENTRY).not())))
                .fetchOne();
        return n == null || n < 1;
    }

    @Override
    public Order findByBomId(Long bomId) {
        QOrder o = QOrder.order;
        QBom b = QBom.bom;

        return queryFactory
                .select(o).from(o)
                .innerJoin(b).on(o.id.eq(b.orderId))
                .where(b.id.eq(bomId))
                .fetchJoin().fetchOne();
    }

    @Override
    public Map<String, Long> findIdMapByBomItemCode(String bomItemCode) {
        QOrder o = QOrder.order;
        QBom b = QBom.bom;

        Tuple ids = queryFactory
                .select(o.id, b.id)
                .from(o).innerJoin(b).on(o.id.eq(b.orderId))
                .where(b.itemCode.eq(bomItemCode))
                .fetchJoin().fetchOne();
        if(ids == null) return null;
        return Map.of("oId", ids.get(0, Long.class), "bId", ids.get(1, Long.class));
    }

    @Override
    public List<MesListVO> findAllMesAndOrderCode() {
        QOrder o = QOrder.order;
        QBom b = QBom.bom;
        QMes m = QMes.mes;

        return queryFactory
                .select(b, m, o).from(b)
                .innerJoin(m).on(b.orderId.eq(m.orderId)
                        .and(b.itemCode.eq(m.itemCode)))
                .innerJoin(o).on(o.id.eq(m.orderId))
                .fetchJoin().fetch().stream().map(t -> {
                    Bom bom = t.get(0, Bom.class);
                    Order order = t.get(2, Order.class);
                    int cl = order.getClassification().ordinal();
                    return new MesListVO(order.getOrderCode(), order.getId(),
                            cl, bom.getId(), t.get(1, Mes.class));
                }).toList();
    }

    private List<Order> findByItemName(String orderCode, String itemCode, String itemName) {
        QOrder o = QOrder.order;
        QBom b = QBom.bom;

        if (orderCode == null || orderCode.isEmpty()) {
            return queryFactory
                    .select(o)
                    .join(b).on(o.boms.contains(b))
                    .where(b.itemName.contains(itemName).and(b.itemCode.contains(itemCode)))
                    .fetchJoin().fetch();
        }
        else if (itemCode == null || itemCode.isEmpty()) {
            return queryFactory
                    .select(o)
                    .join(b).on(o.boms.contains(b))
                    .where(b.itemName.contains(itemName).and(o.orderCode.contains(orderCode)))
                    .fetchJoin().fetch();
        }
        else {
            return queryFactory
                    .select(o)
                    .join(b).on(o.boms.contains(b))
                    .where(b.itemName.contains(itemName).and(b.itemCode.contains(itemCode).and(o.orderCode.contains(orderCode))))
                    .fetchJoin().fetch();
        }
    }

    private List<Order> findByOrderCodeOrItemCode(String orderCode, String itemCode) {
        QOrder o = QOrder.order;
        QBom b = QBom.bom;

        if (orderCode == null || orderCode.isEmpty()) {
            return queryFactory
                    .select(o)
                    .join(b).on(o.boms.contains(b))
                    .where(b.itemCode.contains(itemCode))
                    .fetchJoin().fetch();
        }
        else if (itemCode == null || itemCode.isEmpty()) {
            return queryFactory
                    .select(o)
                    .join(b).on(o.boms.contains(b))
                    .where(o.orderCode.contains(orderCode))
                    .fetchJoin().fetch();
        }
        else {
            return queryFactory
                    .select(o)
                    .join(b).on(o.boms.contains(b))
                    .where(b.itemCode.contains(itemCode).and(o.orderCode.contains(orderCode)))
                    .fetchJoin().fetch();
        }
    }
}

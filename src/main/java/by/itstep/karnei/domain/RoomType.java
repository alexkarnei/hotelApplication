package by.itstep.karnei.domain;

public enum RoomType {
    SINGLE(1),
    DOUBLE(2),
    TRIPLE(3),
    QUADRUPLE(4);

    private int personQuantity;

    RoomType(int personQuantity) {
        this.personQuantity = personQuantity;
    }
}

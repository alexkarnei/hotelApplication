package by.itstep.karnei.domain;

import by.itstep.karnei.domain.abstractClasses.AbstractEntity;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@Entity
public class HotelRoom extends AbstractEntity {

    @ElementCollection(targetClass = RoomType.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "room_type", joinColumns = @JoinColumn(name = "room_id"))
    @Enumerated(EnumType.STRING)
    private List<RoomType> roomType;

    @NotNull
    private int roomQuantity;

    private String roomPicture;

    @NotNull
    private int cost;
}

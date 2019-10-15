package by.itstep.karnei.domain;

import by.itstep.karnei.domain.abstractClasses.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIgnore;
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

    @OneToMany(fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            mappedBy = "hotelRoom")
    @JsonIgnore
    List<HotelRoomPictures> roomPicture;

    @NotNull
    private int cost;
}

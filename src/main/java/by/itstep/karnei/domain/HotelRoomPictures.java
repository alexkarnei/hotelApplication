package by.itstep.karnei.domain;

import by.itstep.karnei.domain.abstractClasses.AbstractEntity;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@Data
@Entity
public class HotelRoomPictures extends AbstractEntity {

    private String alt;

    private  String title;
    private String url;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "hotel_room_id")
    private HotelRoom hotelRoom;
}

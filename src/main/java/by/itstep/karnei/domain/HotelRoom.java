package by.itstep.karnei.domain;

import by.itstep.karnei.domain.abstractClasses.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.chrono.ChronoLocalDateTime;
import java.util.Date;
import java.util.List;

@Data
@Entity
public class HotelRoom extends AbstractEntity {

    @NotBlank(message = "Room type can't empty")
    private String roomType;

    @OneToMany(fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            mappedBy = "hotelRoom")
    @JsonIgnore
    List<HotelRoomPictures> roomPicture;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;

    @NotNull(message = "Cost con't empty")
    private Integer cost;

    private LocalDate checkIn;
    private LocalDate checkOut;

    private boolean isFree;

}

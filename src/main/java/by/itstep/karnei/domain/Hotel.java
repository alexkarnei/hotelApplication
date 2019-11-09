package by.itstep.karnei.domain;

import by.itstep.karnei.domain.abstractClasses.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@Entity
@EqualsAndHashCode(callSuper = false)
public class Hotel extends AbstractEntity {

    @NotBlank(message = "Hotel title can't be empty")
    private String hotelTitle;
    @NotNull(message = "Stars quantity can't be empty")
    private Integer starsQuantity;
    @NotBlank(message = "City can't be empty")
    private String city;
    @NotBlank(message = "Address can't be empty")
    private String address;
    @NotNull(message = "Rooms quantity can't be empty")
    private Integer roomsQuantity;

    @OneToMany(fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            mappedBy = "hotel")
    @JsonIgnore
    List<HotelPictures> pictures;
}

package by.itstep.karnei.domain;

import by.itstep.karnei.domain.abstractClasses.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Set;

@Data
@Entity
public class Guest extends AbstractEntity {
    @NotNull
    private String firstName;
    @NotNull
    private String lastName;
    @NotNull
    private String passport;

    @OneToMany(fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            mappedBy = "guest")
//    @JsonIgnore
    Set<HotelRoom> hotelRoom;
}

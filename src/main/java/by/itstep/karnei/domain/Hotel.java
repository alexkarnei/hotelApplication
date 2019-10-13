package by.itstep.karnei.domain;

import by.itstep.karnei.domain.abstractClasses.AbstractEntity;
import lombok.Data;

import javax.persistence.Entity;
import java.util.List;

@Data
@Entity
public class Hotel extends AbstractEntity {

    private String hotelTitle;

    private String hotelName;

    private String address;

    private String pictureId;

    private int rooms;

    private List<String> pictures;
}

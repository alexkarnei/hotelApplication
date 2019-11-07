package by.itstep.karnei.repository;

import by.itstep.karnei.domain.Hotel;
import by.itstep.karnei.domain.HotelPictures;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

public interface HotelPictureRepo extends CrudRepository<HotelPictures, Long> {
    Page<HotelPictures> findAll(Pageable pageable);

    Page<HotelPictures> findAllByHotel(Pageable pageable, Hotel hotel);
}

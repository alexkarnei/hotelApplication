package by.itstep.karnei.repository;

import by.itstep.karnei.domain.Hotel;
import by.itstep.karnei.domain.HotelRoom;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

public interface HotelRoomRepo extends CrudRepository <HotelRoom, Long> {

    Page<HotelRoom> findAll(Pageable pageable);

    Page<HotelRoom> findAllByHotel(Pageable pageable,Hotel hotel);

//    Page<HotelRoom> findAllByFree(boolean free, Pageable pageable);
}

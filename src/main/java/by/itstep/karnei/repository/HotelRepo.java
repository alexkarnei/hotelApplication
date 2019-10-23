package by.itstep.karnei.repository;

import by.itstep.karnei.domain.Hotel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;


public interface HotelRepo extends CrudRepository <Hotel,Long> {

    Page<Hotel> findAll(Pageable pageable);

}

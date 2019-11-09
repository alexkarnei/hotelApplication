package by.itstep.karnei.service;


import by.itstep.karnei.domain.Hotel;
import by.itstep.karnei.repository.HotelRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Optional;

@Service
public class HotelService {
    @Autowired
    HotelRepo hotelRepo;

    public boolean saveHotel(Hotel hotel) {

        hotelRepo.save(hotel);
        return true;
    }

    @GetMapping
    public Iterable<Hotel> hotelList() {
        return hotelRepo.findAll();
    }

    public Page<Hotel> getAll(Pageable pageable) {
        return hotelRepo.findAll(pageable);
    }

    public Hotel getById(Long id) {
        Optional<Hotel> owner = hotelRepo.findById(id);
        return owner.orElse(null);
    }
}

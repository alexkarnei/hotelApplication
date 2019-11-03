package by.itstep.karnei.service;

import by.itstep.karnei.domain.Hotel;
import by.itstep.karnei.domain.HotelRoom;
import by.itstep.karnei.repository.HotelRepo;
import by.itstep.karnei.repository.HotelRoomRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

@Service
public class HotelRoomService {

    @Autowired
    HotelRoomRepo hotelRoomRepo;

    public boolean saveHotelRoom(HotelRoom hotelRoom) {

        hotelRoomRepo.save(hotelRoom);
        return true;
    }

    @GetMapping
    public Iterable<HotelRoom> hotelRoomList() {
        return hotelRoomRepo.findAll();
    }

    public Page<HotelRoom> getAll(Pageable pageable) {
        return hotelRoomRepo.findAll(pageable);
    }

    /*public Page<HotelRoom> getAllFree(boolean free, Pageable pageable) {
        return hotelRoomRepo.findAllByFree(true, pageable);
    }*/

    public Page<HotelRoom> getAllByHotel(Pageable pageable,Hotel hotel) {
        return hotelRoomRepo.findAllByHotel(pageable,hotel);
    }
}

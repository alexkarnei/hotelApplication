package by.itstep.karnei.service;

import by.itstep.karnei.domain.Hotel;
import by.itstep.karnei.domain.HotelPictures;
import by.itstep.karnei.repository.HotelPictureRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

@Service
public class HotelPicturesService {

    @Autowired
    HotelPictureRepo hotelPictureRepo;

    public boolean saveHotelPictures(HotelPictures hotelPictures) {

        hotelPictureRepo.save(hotelPictures);
        return true;
    }

    @GetMapping
    public Iterable<HotelPictures> hotelPicturesList() {
        return hotelPictureRepo.findAll();
    }

    public Page<HotelPictures> getAll(Pageable pageable) {
        return hotelPictureRepo.findAll(pageable);
    }

    public Page<HotelPictures> getAllByHotel(Pageable pageable, Hotel hotel) {
        return hotelPictureRepo.findAllByHotel(pageable, hotel);
    }
}

package by.itstep.karnei.service;

import by.itstep.karnei.repository.HotelRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HotelService {
    @Autowired
    HotelRepo hotelRepo;

}

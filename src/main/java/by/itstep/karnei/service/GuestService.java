package by.itstep.karnei.service;

import by.itstep.karnei.domain.Guest;
import by.itstep.karnei.repository.GuestRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

@Service
public class GuestService {

    @Autowired
    GuestRepo guestRepo;

    public boolean saveGuest(Guest guest) {

        guestRepo.save(guest);
        return true;
    }

    @GetMapping
    public Iterable<Guest> guestList() {
        return guestRepo.findAll();
    }

    public Page<Guest> getAll(Pageable pageable) {

        return guestRepo.findAll(pageable);
    }
}

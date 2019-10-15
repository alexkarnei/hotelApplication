package by.itstep.karnei.repository;

import by.itstep.karnei.domain.Guest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

public interface GuestRepo extends CrudRepository<Guest,Long> {

    Page <Guest> findAll(Pageable pageable);
}

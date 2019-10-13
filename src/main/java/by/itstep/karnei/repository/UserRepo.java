package by.itstep.karnei.repository;

import by.itstep.karnei.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository <User, Long> {
}

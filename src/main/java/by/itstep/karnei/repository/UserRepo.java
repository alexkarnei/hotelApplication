package by.itstep.karnei.repository;

import by.itstep.karnei.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);

    Page<User> findAll (Pageable pageable);

    Optional<User> findById (Long id);
}

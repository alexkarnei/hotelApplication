package by.itstep.karnei.service;

import by.itstep.karnei.domain.User;
import by.itstep.karnei.domain.UserRole;
import by.itstep.karnei.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    UserRepo userRepo;

    @Autowired
    MailSenderService mailSenderService;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Override
    public User loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepo.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found!");
        }
        return user;
    }


    public boolean addUser(User user) {
        User userFromDb = userRepo.findByUsername(user.getUsername());
        if (userFromDb != null) {
            return false;
        } else {
            user.setActive(false);
            user.setUserRoles(Collections.singleton(UserRole.GUEST));
            user.setActivationCode(UUID.randomUUID().toString());
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            userRepo.save(user);
            sendMessage(user);
            return true;
        }
    }

    private void sendMessage(User user) {
        if (!StringUtils.isEmpty(user.getEmail())) {
            String message = String.format(
                    "Hello, %s! \n" +
                            "Welcome to GrodnoLift Web App. Please, visit next link: " + "http://localhost:8080/activate/%s",
                    user.getUsername(),
                    user.getActivationCode()
            );
            mailSenderService.send(user.getEmail(), "Activation Code!", message);
        }
    }

    public boolean activateUser(String code) {
        User userByCode = userRepo.findByActivationCode(code);
        if (userByCode == null) {
            return false;
        } else {
            userByCode.setActivationCode(null);
            userByCode.setActive(true);
            userRepo.save(userByCode);
            return true;
        }
    }

    public List<User> findAllUsers() {
        return userRepo.findAll(Sort.by("id"));
    }


    public void saveUser(User user, String username, Map<String, String> form) {

        user.setUsername(username);
        Set<String> roles = Arrays.stream(UserRole.values())
                .map(UserRole::name)
                .collect(Collectors.toSet());
        user.getUserRoles().clear();
        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                user.getUserRoles().add(UserRole.valueOf(key));
            }
        }
        userRepo.save(user);
    }

    public void updateProfile(User user, String password, String email) {
        String userEmail = user.getEmail();
        boolean isEmailChanged = (email != null && email.equals(userEmail) || userEmail != null && userEmail.equals(email));

        if (isEmailChanged) {
            user.setEmail(email);

            if (!StringUtils.isEmpty(email)) {
                user.setActivationCode(UUID.randomUUID().toString());
            }
        }

        if (!StringUtils.isEmpty(password)) {
            user.setPassword(passwordEncoder.encode(password));
        }

        userRepo.save(user);

        if (isEmailChanged) {
            sendMessage(user);
        }
    }
}
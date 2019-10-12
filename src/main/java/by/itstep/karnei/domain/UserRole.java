package by.itstep.karnei.domain;

import org.springframework.security.core.GrantedAuthority;

public enum UserRole implements GrantedAuthority {
    GUEST, ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}

package ru.kravpeter.lsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.kravpeter.lsystem.entity.User;

import java.util.List;

public interface UserRepository extends JpaRepository<User, String> {
    @Override
    List<User> findAll();
    User findByEmail(String email);
}

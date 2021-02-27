package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Topic;
import com.mcardoso.dslearn.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByEmail(String email);

}

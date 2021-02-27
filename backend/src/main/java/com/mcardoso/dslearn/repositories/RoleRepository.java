package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Resource;
import com.mcardoso.dslearn.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}

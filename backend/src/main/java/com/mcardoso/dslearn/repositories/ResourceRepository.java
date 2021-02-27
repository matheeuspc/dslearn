package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Reply;
import com.mcardoso.dslearn.entities.Resource;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ResourceRepository extends JpaRepository<Resource, Long> {
}

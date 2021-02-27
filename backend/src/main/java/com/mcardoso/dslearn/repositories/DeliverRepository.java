package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Course;
import com.mcardoso.dslearn.entities.Deliver;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeliverRepository extends JpaRepository<Deliver, Long> {
}

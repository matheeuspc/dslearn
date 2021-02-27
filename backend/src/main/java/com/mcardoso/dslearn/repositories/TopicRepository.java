package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Task;
import com.mcardoso.dslearn.entities.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TopicRepository extends JpaRepository<Topic, Long> {
}

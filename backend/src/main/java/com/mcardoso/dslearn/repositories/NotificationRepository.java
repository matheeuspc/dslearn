package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Enrollment;
import com.mcardoso.dslearn.entities.Notification;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NotificationRepository extends JpaRepository<Notification, Long> {
}

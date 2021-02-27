package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Enrollment;
import com.mcardoso.dslearn.entities.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LessonRepository extends JpaRepository<Lesson, Long> {
}

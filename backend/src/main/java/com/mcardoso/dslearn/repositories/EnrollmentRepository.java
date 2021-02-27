package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Course;
import com.mcardoso.dslearn.entities.Enrollment;
import com.mcardoso.dslearn.entities.pk.EnrollmentPK;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPK> {
}

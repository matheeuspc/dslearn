package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Resource;
import com.mcardoso.dslearn.entities.Section;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SectionRepository extends JpaRepository<Section, Long> {
}

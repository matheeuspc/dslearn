package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Offer;
import com.mcardoso.dslearn.entities.Reply;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReplyRepository extends JpaRepository<Reply, Long> {
}

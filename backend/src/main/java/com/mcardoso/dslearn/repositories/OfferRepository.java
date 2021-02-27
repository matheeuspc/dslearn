package com.mcardoso.dslearn.repositories;

import com.mcardoso.dslearn.entities.Notification;
import com.mcardoso.dslearn.entities.Offer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OfferRepository extends JpaRepository<Offer, Long> {
}

package com.mcardoso.dslearn.services;

import com.mcardoso.dslearn.dto.DeliverRevisionDTO;
import com.mcardoso.dslearn.dto.NotificationDTO;
import com.mcardoso.dslearn.entities.Deliver;
import com.mcardoso.dslearn.entities.Notification;
import com.mcardoso.dslearn.entities.User;
import com.mcardoso.dslearn.observers.DeliverRevisionObserver;
import com.mcardoso.dslearn.repositories.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.time.Instant;
import java.util.*;

@Service
public class NotificationService implements DeliverRevisionObserver {

    @Autowired
    private NotificationRepository notificationRepository;

    @Autowired
    private AuthService authService;

    @Autowired
    private DeliverService deliverService;

    //executa o método logo após o objeto ser instanciado
    @PostConstruct
    private void initialize () {
        deliverService.subscribeDeliverRevisionObserver(this);
    }

    @Transactional(readOnly = true)
    public Page<NotificationDTO> notificationForCurrentUser(boolean unreadOnly, Pageable pageable) {
        User user = authService.authenticated();
        Page<Notification> page = notificationRepository.find(user, unreadOnly, pageable);
        return page.map(x -> new NotificationDTO(x));
    }

    @Transactional
    public void saveDeliverNotification(Deliver deliver){

        Long sectionId = deliver.getLesson().getSection().getId();
        Long resourceId = deliver.getLesson().getSection().getResource().getId();
        Long offerId = deliver.getLesson().getSection().getResource().getOffer().getId();

        String route = "/offers/" + offerId + "/resources/" + resourceId + "/sections/" + sectionId;
        String text = deliver.getFeedback();
        Instant moment = Instant.now();
        User user = deliver.getEnrollment().getStudent();

        Notification notification = new Notification(null, text, moment, false, route, user);
        notificationRepository.save(notification);
    }

    @Override
    public void onSaveRevision(Deliver deliver) {
        saveDeliverNotification(deliver);
    }
}

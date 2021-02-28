package com.mcardoso.dslearn.resources;

import com.mcardoso.dslearn.dto.NotificationDTO;
import com.mcardoso.dslearn.dto.UserDTO;
import com.mcardoso.dslearn.repositories.NotificationRepository;
import com.mcardoso.dslearn.services.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/notifications")
public class NotificationResource {

    @Autowired
    private NotificationService notificationService;

    @GetMapping
    public ResponseEntity<Page<NotificationDTO>> findAll(
            @RequestParam(value = "unreadOnly", defaultValue = "false") Boolean unreadOnly,
            @RequestParam(value = "page", defaultValue = "0") Integer page,
            @RequestParam(value = "size", defaultValue = "12") Integer size
    ){
        PageRequest pageRequest = PageRequest.of(page, size);
        Page<NotificationDTO> list = notificationService.notificationForCurrentUser(unreadOnly, pageRequest);
        return ResponseEntity.ok().body(list);
    }

}

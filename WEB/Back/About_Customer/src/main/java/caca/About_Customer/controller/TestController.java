package caca.About_Customer.controller;

import caca.About_Customer.dto.TestDto;
import caca.About_Customer.service.TestService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:8001")
@RequestMapping("/api")
public class TestController {
    @Autowired
    private final TestService testService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public Object test() {
        return "Hello DB!";
    }

    String user_id = "user1";
    @RequestMapping(value = "/about_customer1", method = RequestMethod.GET)
    public List<TestDto> getUser() {
        return testService.getUserList(user_id);
    }
}
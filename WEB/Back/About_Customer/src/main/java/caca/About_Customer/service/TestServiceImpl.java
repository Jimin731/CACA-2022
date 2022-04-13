package caca.About_Customer.service;

import caca.About_Customer.dto.TestDto;
import caca.About_Customer.mapper.TestMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TestServiceImpl implements TestService {
    private final TestMapper testMapper;

    String user_id = "user1";

    @Override
    public List<TestDto> getUserList(String user_id) {
        return testMapper.getUserList();
    }
}

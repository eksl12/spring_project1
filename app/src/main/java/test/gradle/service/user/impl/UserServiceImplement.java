package test.gradle.service.user.impl;

import test.gradle.mapper.user.UserMapper;
import test.gradle.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImplement implements UserService {
	private UserMapper userMapper;

	@Autowired
	UserServiceImplement(
		UserMapper userMapper
	) {
		this.userMapper = userMapper;
	}

	public List<Map<String, Object>> getUser() {
		return userMapper.getUser();
	}
}

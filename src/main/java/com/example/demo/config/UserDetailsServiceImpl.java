package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.Model.User;
import com.example.demo.Model.UserDTO;
import com.example.demo.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired
	private UserRepository repo;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = repo.getUserByUserName(username);
		if (user == null) {
			throw new UsernameNotFoundException("Could not found");
		}
		CustomUserDetails custom = new CustomUserDetails(user);
		return custom;
	}
	
	public void saveOrUpdate(UserDTO user) {
		User cc = new User();
		cc.setId(user.getId());
		cc.setUsername(user.getUsername());
		cc.setPassword(encoder.encode(user.getPassword()));
		cc.setRole("USER");
		repo.save(cc);
		
	}

}

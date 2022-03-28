package fr.ChopineDuCoin.api.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import fr.ChopineDuCoin.api.model.Authorities;
import fr.ChopineDuCoin.api.model.User;
import fr.ChopineDuCoin.api.repositories.AuthoritiesRepositories;
import fr.ChopineDuCoin.api.repositories.UserRepository;

@Controller
public class UserController {

	@Autowired private UserRepository userRepository;
	@Autowired private AuthoritiesRepositories authoritiesRepositories;
	
	@GetMapping(path = "/register")
	public String register(HttpServletRequest request , ModelMap modelmap) {
		return "public/register";
	}
	
	@PostMapping(path = "/addUser")
    public String addUser(HttpServletRequest request ,ModelMap modelmap) {
		userRepository.save(new User(request.getParameter("username"), request.getParameter("password") ));
		authoritiesRepositories.save(new Authorities(request.getParameter("username")));
		
        return "public/main";
    }
}

package fr.ChopineDuCoin.api.auth;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired DataSource dataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    auth.jdbcAuthentication().dataSource(dataSource).passwordEncoder(passwordEncoder());
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
	    PasswordEncoder encoder = new BCryptPasswordEncoder();
	    return encoder;
	}

	protected void configure(HttpSecurity http) throws Exception {

		http
		.authorizeRequests()
		.antMatchers("/", "/calendrier", "/register", "/addUser").permitAll()
		//.antMatchers("/admin", "/addCalendrier", "/removeCalendrier", "/adminUser", "/desactiveUser", "/activeUser", "/removeUser").hasAuthority("ROLE_ADMIN")
		//.anyRequest().authenticated()
		.anyRequest().permitAll()
		.and()

		.formLogin()
		.permitAll()
		.and()

		.logout()
		.logoutSuccessUrl("/")
		.permitAll()
		.and()
		.rememberMe()

		.and().csrf().disable();
	}
}

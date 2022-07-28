package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public SessionRegistry sessionRegistry() {
	  return new SessionRegistryImpl();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();

		http
		 .sessionManagement()
         .maximumSessions(1)
         .maxSessionsPreventsLogin(true)
         .sessionRegistry(sessionRegistry())
         .and().and()
		.authorizeRequests()
		.antMatchers("/lobby", "/game")
		.authenticated()
		.anyRequest()
		.permitAll()
		.and()
		.formLogin()	
		.usernameParameter("userid")
		.passwordParameter("password")
		.loginPage("/signin")
		.loginProcessingUrl("/signin")
		.defaultSuccessUrl("/lobby");
	}
}

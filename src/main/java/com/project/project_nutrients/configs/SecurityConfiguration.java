package com.project.project_nutrients.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity

public class SecurityConfiguration {
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
            // None using csrf protection
            httpSecurity.csrf().disable();
            // 권한에 대한 부분 : url & roles : user url & roles
            // url, roles from Dao
            httpSecurity.authorizeHttpRequests() // 로그인
                    .requestMatchers("/manager*").hasAnyRole("ADMIN", "MANAGER")
                    .requestMatchers("/admin*").hasRole("ADMIN")
                    .requestMatchers("/carInfor/map/selectSearch").authenticated() // 로그인한 대상
                    .requestMatchers("/carInfor/map/*").hasRole("USER")
                                .anyRequest().permitAll() ; //그외 전체 대상

            httpSecurity.formLogin(login -> login.loginPage("/members/loginForm") // 로그인 하지 않은 사람이 로그인한 후에 접근 가능한 페이지를 눌렀을때 로그인 폼을 띄워라
                            .failureUrl("/members/loginForm?fail=true")  // 이게 맞는 건가?
                            .loginProcessingUrl("/login") //바꾸면 안됨 절대로
                            .defaultSuccessUrl("/")); //로그인 성공하고 넘어가는 페이지 컨트롤러
            httpSecurity.logout(logout -> logout
                            .logoutSuccessUrl("/")
                            .invalidateHttpSession(true)
                            .deleteCookies("JSESSIONID"));

                            httpSecurity.exceptionHandling()
                            .accessDeniedPage("/home");  // 이건 우리 메인 페이지 주소를 넣어야 하는건가?

            return httpSecurity.build();
    }

@Bean
    public BCryptPasswordEncoder encoderPasswordEncoder() {
    return new BCryptPasswordEncoder();
}
    
    
}

package com.project.project_nutrients.controller;

import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.project_nutrients.service.RecommService;

import java.util.UUID;

@Controller
@RequestMapping("/recomm")

public class RecommendationController {
    @Autowired
    RecommService recommservice;

    @GetMapping("/list")
    public ModelAndView wholelist(@RequestParam Map params, ModelAndView modelAndView) {
        
        modelAndView.setViewName("/WEB-INF/views/project/supplist/recommenlist.jsp");
        return modelAndView;
    }
    
    // 기존에서 pagination 돌리기
    @GetMapping("/effectflag/{EFFECT_FLAG}")
    public ModelAndView recommendation(@PathVariable String EFFECT_FLAG, @RequestParam Map parmas,
            ModelAndView modelAndView) {
               
        Object result = recommservice.selectList(EFFECT_FLAG, parmas);

        modelAndView.addObject("params", parmas);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/supplist/recommendation.jsp");
        return modelAndView;
    }

}

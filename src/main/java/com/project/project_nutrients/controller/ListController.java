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

import com.project.project_nutrients.service.ListService;

import java.util.UUID;

@Controller
@RequestMapping("/supp")
public class ListController {
    @Autowired
    ListService wholelistservice;

    // anyone 
    @GetMapping({"/wholelist", "/wholelist/{currentPage}"})
    public ModelAndView wholelist(@PathVariable(required=false) String currentPage, @RequestParam Map params, ModelAndView modelAndView)
    {
        if (currentPage == null)
        {
            currentPage = "1";
        }
        params.put("currentPage", currentPage);
        Object result = wholelistservice.listWithPaginations(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/supplist/wholelist.jsp");
        return modelAndView;
    }

    @PostMapping("/selectspec/{SUPP_ID}")
    public ModelAndView spec(@PathVariable String SUPP_ID, @RequestParam Map params, ModelAndView modelAndView) {
        Object result = wholelistservice.selectSpec(SUPP_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/supplist/suppspec.jsp");
        return modelAndView;
    }

    // admin 권한인 list
    @GetMapping("/adminwholelist")
    public ModelAndView adminwholelist(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = wholelistservice.listWithPaginations(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/admin/admin_wholelist.jsp");
        return modelAndView;
    }
    //admin 권한으로 작동되야함. 
     @PostMapping("/deleteandlist/{SUPP_ID}")
    public ModelAndView deleteandlist(@PathVariable String SUPP_ID
                        , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = wholelistservice.deleteAndList(SUPP_ID, params);
         modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/supplist/wholelist.jsp");
        return modelAndView;
    }
// admin 권한으로 영양제도 추가해야함. 
    @GetMapping("/listadd")
    public ModelAndView listadd(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/supplist/listadd.jsp");
        return modelAndView;
    }
// admin 권한으로 영양제 추가할거임. 
    
    @GetMapping("/insertandselect")
    public ModelAndView insertandselect(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = wholelistservice.listinsertandselect(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/supplist/wholelist.jsp");
        return modelAndView;
    }

    // TAB 메인의 about 
    @GetMapping("/about")
    public ModelAndView about(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/about.jsp");
        return modelAndView;
    }


}

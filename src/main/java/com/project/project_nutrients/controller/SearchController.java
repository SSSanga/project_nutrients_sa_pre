// package com.project.project_nutrients.controller;

// import java.util.Map;
// import java.util.UUID;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.http.ResponseEntity;
// import org.springframework.stereotype.Controller;
// import org.springframework.web.bind.annotation.DeleteMapping;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.PutMapping;
// import org.springframework.web.bind.annotation.RequestBody;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.bind.annotation.RestController;
// import org.springframework.web.servlet.ModelAndView;

// import com.project.project_nutrients.service.SearchService;

// import java.util.UUID;

// @Controller
// @RequestMapping("/search")

// public class SearchController {

//    @Autowired
// SearchService searchservice;

//     @PostMapping("/selectsupp")
//     public ModelAndView selectsupp(@RequestParam Map params, ModelAndView modelAndView) {
//         Object result = searchservice.selectSearch(params);
//         modelAndView.addObject("params", params);
//         modelAndView.addObject("result", result);
        
//         modelAndView.setViewName("/WEB-INF/views/project/supplist/searchresult.jsp");
//         return modelAndView;
//     }
// }

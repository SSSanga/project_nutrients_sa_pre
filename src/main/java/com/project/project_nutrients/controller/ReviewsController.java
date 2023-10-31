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


import com.project.project_nutrients.service.ReviewsService;



@Controller
@RequestMapping("/reviews")

public class ReviewsController {
    @Autowired
    ReviewsService reviewsService;
   
    // @GetMapping("/reviewlist")
    // public ModelAndView reviewlist(@RequestParam Map params, ModelAndView modelAndView) {
    //     Object result = reviewsService.reviewselectSearch(params);
    //     modelAndView.addObject("params", params);
    //     modelAndView.addObject("result", result);
        
    //     modelAndView.setViewName("/WEB-INF/views/project/reviews/reviews.jsp");
    //     return modelAndView;
    // }

    // /selectSearch?search=YEAR&words=2020
    // /selectSearch/CAR_NAME/소
    @GetMapping("/reviewlist")
    public ModelAndView reviewselectSearchWithPagination(@RequestParam Map params
                            , ModelAndView modelAndView) {
        Object result = reviewsService.reviewselectSearchWithPagination(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviews.jsp");
        return modelAndView;
    }

    @GetMapping("/review")
    public ModelAndView review(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = reviewsService.reviewselectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);        
        modelAndView.setViewName("/WEB-INF/views/project/reviews/review1.jsp");
        return  modelAndView;
    }

    @GetMapping("/reviewselectDetail/{REVIEW_ID}")
    public ModelAndView reviewselectDetail(@PathVariable String REVIEW_ID
                        , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = reviewsService.reviewselectDetail(REVIEW_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/reviews/review1.jsp");
        return modelAndView;
    }

        // review erd에서 SUPP_ID 지움 
    // @GetMapping("/wholelistselectDetail/{SUPP_ID}")
    // public ModelAndView wholelistselectDetail(@PathVariable String SUPP_ID
    //                     , @RequestParam Map params, ModelAndView modelAndView) {
    //     Object result = reviewsService.wholelistselectDetail(SUPP_ID, params);
    //     modelAndView.addObject("params", params);
    //     modelAndView.addObject("result", result);
    //     modelAndView.setViewName("/WEB-INF/views/project/reviews/review1.jsp");
    //     return modelAndView;
    // }


    @GetMapping("/review2")
    public ModelAndView review2(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/reviews/review2.jsp");
        return  modelAndView;
    }

    @GetMapping("/reviewwrite")
    public ModelAndView reviewwrite(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviewwriting.jsp");
        return  modelAndView;
    }

    @GetMapping("/reviewsinput")
    public ModelAndView reviewsinput(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviewsinput.jsp");
        return  modelAndView;
    }


    @GetMapping("/reviewselectSearch")
    public ModelAndView reviewselectSearch(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = reviewsService.reviewselectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviews.jsp");
        return modelAndView;
    }

    @GetMapping("/reviewinsertAndSelect")
    public ModelAndView reviewinsertAndSelect(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = reviewsService.reviewinsertAndSelect(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviews.jsp");
        return modelAndView;
   }

    // admin이 관리, admin 완성되면 수정하기!!!!
    // 0725_REVIWS DELETE 완료
    @GetMapping("/reviewdeleteAndSelectSearch/{REVIEW_ID}")
    public ModelAndView reviewdeleteAndSelectSearch(@PathVariable String REVIEW_ID
                           , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = reviewsService.reviewdeleteAndSelectSearch(REVIEW_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
   
        modelAndView.setViewName("/WEB-INF/views/project/reviews/reviews.jsp");
        return modelAndView;
       }
   

 



}

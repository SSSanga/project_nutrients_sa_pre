package com.project.project_nutrients.controller;

import java.util.Map;
import java.util.UUID;

import com.project.project_nutrients.service.ContactsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.project.project_nutrients.service.ContactsService;

@Controller
@RequestMapping("/contacts")
public class ContactsController {
    
    @Autowired
    ContactsService contactsService;
   
    // @GetMapping("/contactslist")
    // public ModelAndView contactslist(@RequestParam Map params
    // , ModelAndView modelAndView) {
    //     Object result = contactsService.ContactsSearch(params);
    //     modelAndView.addObject("params", params);
    //     modelAndView.addObject("result", result);
    //     modelAndView.setViewName("/WEB-INF/views/project/contacts/contactslist.jsp");
    //     return modelAndView;
    // }
    
    @GetMapping("/contactslist")
    public ModelAndView contactselectSearchWithPagination(@RequestParam Map params
                            , ModelAndView modelAndView) {
        Object result = contactsService.contactselectSearchWithPagination(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/project/contacts/contactslist.jsp");
        return modelAndView;
    }

    @GetMapping("/contactsselectSearch")
    public ModelAndView contactsselectSearch(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = contactsService.contactsselectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/project/contacts/contactssearch.jsp");
        return modelAndView;
    }


    @GetMapping("/contactsselectDetail/{INQUIRY_ID}")
    public ModelAndView contactsselectDetail(@PathVariable String INQUIRY_ID
                        ,@RequestParam Map params, ModelAndView modelAndView) {
        Object result = contactsService.contactsselectDetail(INQUIRY_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/contacts/contactsdetail.jsp");
        return modelAndView;
    }


    @GetMapping("/contactsinsertAndSelect")
    public ModelAndView contactsinsertAndSelect(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = contactsService.contactsinsertAndSelect(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/contacts/contactslist.jsp");
        return modelAndView;
   }

   @GetMapping("/contactswrite")
   public ModelAndView contactswrite(@RequestParam Map params, ModelAndView modelAndView) {
       modelAndView.setViewName("/WEB-INF/views/project/contacts/contactswriting.jsp");
       return  modelAndView;
   }


  // admin이 관리, admin 완성되면 수정하기!!!!
  //댓글삭제 admin이 관리
    @GetMapping("/contactsdeleteAndSelectSearch/{INQUIRY_ID}")
    public ModelAndView contactsdeleteAndSelectSearch(@PathVariable String INQUIRY_ID
                        , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = contactsService.contactsdeleteAndSelectSearch(INQUIRY_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/contacts/contactslist.jsp");
        return modelAndView;
    }



}


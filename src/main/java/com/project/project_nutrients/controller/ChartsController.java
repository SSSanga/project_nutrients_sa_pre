package com.project.project_nutrients.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.project.project_nutrients.service.RecommService;
import com.google.gson.Gson;
import com.project.project_nutrients.service.ChartsService;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mem")
public class ChartsController {
    @Autowired
    ChartsService chartsService;

    @Autowired
    RecommService recommservice;

    @RequestMapping("/")
    public ModelAndView main(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/mainpage.jsp");
        return modelAndView;
    }

    // parameter가 던져지지 않고 그냥 결과만 조회되는경우

    @RequestMapping(value = "/charts/google_charts_scatter", method = RequestMethod.GET)
    public ModelAndView edit(ModelAndView modelAndView, Map params) {
        // HashMap의 값을 Collection으로 얻기
        Object datas = chartsService.getChartData(params);

        Gson gson = new Gson();
        String jsonData = gson.toJson(datas);
        modelAndView.addObject("dataArray", jsonData);
        modelAndView.setViewName("/WEB-INF/views/project/admin/charts_google_various.jsp");

        return modelAndView;
    }

    // parameter=SUPP_ID가 던져지고 별점 CNT결과 가져오는 경우

    @RequestMapping(value = "/charts/another_path/{SUPP_ID}", method = RequestMethod.GET)
    public ModelAndView anotherMethod(ModelAndView modelAndView, Map params, @PathVariable String SUPP_ID) {
        // HashMap의 값을 Collection으로 얻기
        Object datas = chartsService.getSuppChart(SUPP_ID, params);
        // Collection<String> values = params.values();
        // Collection을 ArrayList로 변환
        // ArrayList<String> arrayList = new ArrayList<>(values);
        // Object datas = chartsService.getChartData(arrayList);
        // ArrayList<ArrayList<Object>> datas = new ArrayList<>();
        // datas= chartsServiece.getChartData(params);

        Gson gson = new Gson();
        String jsonData = gson.toJson(datas);
        modelAndView.addObject("dataArray", jsonData); // 쿼리 데이터
        // modelAndView.addObject("params", params);
        modelAndView.setViewName("/WEB-INF/views/project/admin/charts_google_various_supp.jsp");

        return modelAndView;
    }

    // 기존에서 pagination 돌리기
    @RequestMapping(value = "/charts/{EFFECT_FLAG}", method = RequestMethod.GET)
    public ModelAndView recommendation(@RequestParam String EFFECT_FLAG, Map params,
            ModelAndView modelAndView) {

        // Object result = recommservice.selectList(EFFECT_FLAG, params);
        Object datas = chartsService.effectreviewcnt(EFFECT_FLAG, params);

        Gson gson = new Gson();
        String jsonData = gson.toJson(datas);
        modelAndView.addObject("dataArray", jsonData); // 쿼리 데이터

        modelAndView.addObject("params", params);
        // modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/admin/charts_google_various_effect.jsp");
        return modelAndView;
    }

}

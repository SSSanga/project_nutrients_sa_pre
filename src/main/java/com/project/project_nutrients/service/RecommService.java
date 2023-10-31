package com.project.project_nutrients.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;
import com.project.project_nutrients.utils.Paginations;

import java.util.UUID;

@Service
@Transactional

public class RecommService {
    @Autowired
    SharedDao sharedDao;

    // 레코드 총 개수 for paginations
    public Object selectTotal(Map dataMap)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Supplement.selectTotal";

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // recommendation 할때 effect_flag가 일치하면 불러오도록. 
    public Object selectList(String EFFECT_FLAG, Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Supplement.recomm";

        int totalCount = (int) this.selectTotal(dataMap);
        int currentPage = 1;
        if (dataMap.get("currentPage") != null)
        {
            currentPage = Integer.parseInt((String) dataMap.get("currentPage")); // from client in param
        }
        // from client의 params로 들어올것.
        Paginations paginations = new Paginations(totalCount, currentPage);
        HashMap result = new HashMap<>();
        result.put("paginations", paginations); // paginations 전체 내역 포함 = 페이지에 대한 정보.
        // datamap 위치에서 limit 시작레코드 위치, 몇개 출력할건지의 정보 이건 paginations 안에 있음.
        // paginations의 pageScale = 레코드 표현개수, pageBegin = 페이지 개수
        dataMap.put("pageScale", paginations.getPageScale());
        dataMap.put("pageBegin", paginations.getPageBegin());

        dataMap.put("EFFECT_FLAG", EFFECT_FLAG);
        
        
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        
        return result;
    }

}

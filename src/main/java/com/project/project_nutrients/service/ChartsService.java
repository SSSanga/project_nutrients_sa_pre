package com.project.project_nutrients.service;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;

@Service
@Transactional
public class ChartsService {
    @Autowired
    SharedDao sharedDao;

    // public Object reviewselectTotal(Map dataMap) {
    //     String sqlMapId = "Chart.reviewstarcnt";
    
    //     Object result = sharedDao.getOne(sqlMapId, dataMap);
    //     return result;
    // }  

    public Object getChartData(Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Chart.reviewstarcnt"; 
        // 나는 쿼리만 조회해서 그 결과만 받아올거야. parameter 넘기는거 없어 받아오는것만 할거야. 

        // HashMap dataPoint = new HashMap<>();
        // dataPoint.put("resultList", sharedDao.getselect(sqlMapId)); 
        // 넘어온 결과는 5개 레코드가 들어온다. 이걸 resultList : 레코드 map

        Object resultObject = sharedDao.getselect(sqlMapId);
        // ArrayList<Object> arrayList = new ArrayList<Object>((List<Object>) resultObject);
        return resultObject;
    }

    public Object getSuppChart(String SUPP_ID, Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Chart.suppid_tarcnt"; 
        
        dataMap.put("SUPP_ID", SUPP_ID);

        
        Object resultObject = sharedDao.getList(sqlMapId, dataMap);
        return resultObject;
    }

    // EFFECT에서 댓글 COUNT를 탑으로 뽑아내기
    public Object effectreviewcnt (String EFFECT_FLAG, Map dataMap) {
        
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Chart.effectreviewcnt"; 

        dataMap.put("EFFECT_FLAG", EFFECT_FLAG);

        Object resultObject = sharedDao.getList(sqlMapId, dataMap);
        return resultObject;
    }
    
}

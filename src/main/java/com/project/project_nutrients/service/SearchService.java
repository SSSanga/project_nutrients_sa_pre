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


public class SearchService {
    @Autowired
    SharedDao sharedDao;

    public Map selectSearch(Map dataMap) {
        String sqlMapId = "Supplement.selectSearch";
        
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }
    
}

package com.project.project_nutrients.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;
import com.project.project_nutrients.utils.Commons;
import com.project.project_nutrients.utils.Paginations;




@Service
@Transactional
public class ReviewsService {
    @Autowired
    SharedDao sharedDao;

    @Autowired
    Commons commonUtils;

    public String generateUUID() {
        return UUID.randomUUID().toString();
    }

    // 리뷰 테스트용/ 검색(조건-search:)
    public Map reviewselectSearch(Map dataMap) {
        String sqlMapId = "Reviews.reviewselect";
        
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    public Object reviewselectDetail(String REVIEW_ID, Map dataMap) {
            // Object getOne(String sqlMapId, Object dataMap)
            String sqlMapId = "Reviews.reviewselectDetail";
            dataMap.put("REVIEW_ID", REVIEW_ID);
    
            Object result = sharedDao.getOne(sqlMapId, dataMap);
            return result;
    }

    // review erd에서 SUPP_ID 지움 
    // public Object wholelistselectDetail(String SUPP_ID, Map dataMap) {
    //         // Object getOne(String sqlMapId, Object dataMap)
    //         String sqlMapId = "Reviews.wholelistselectDetail";
    //         dataMap.put("SUPP_ID", SUPP_ID);
    
    //         Object result = sharedDao.getOne(sqlMapId, dataMap);
    //         return result;
    // }

    public Object reviewinsert(Map dataMap) {
        String sqlMapId = "Reviews.reviewinsert";
        if(dataMap.get("REVIEW_ID").equals("")){
            String uuid = generateUUID();
            dataMap.put("REVIEW_ID", uuid);
        } else{
        }
        dataMap.put("UNIQUE_ID", commonUtils.getUserID());
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object reviewinsertAndSelect(Map dataMap) {

        HashMap result = new HashMap<>();
        result.put("reviewinsertCount", this.reviewinsert(dataMap));

        result.putAll(this.reviewselectSearchWithPagination(dataMap));
        return result;
    }
     
      // rest api
      public Object reviewdelete(Map dataMap) {
        String sqlMapId = "Reviews.reviewdelete";

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }
    public Object reviewdelete(String  REVIEW_ID) {
        String sqlMapId = "Reviews.reviewdelete";
        HashMap dataMap = new HashMap<>();
        dataMap.put("REVIEW_ID",  REVIEW_ID);

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

     // MVC view 회원탈퇴? 악플삭제? admin이 관리
        public Object reviewdeleteAndSelectSearch(String REVIEW_ID, Map dataMap) {
            dataMap.put("REVIEW_ID",  REVIEW_ID);
    
            HashMap result = new HashMap<>();
            result.put("deleteCount", this.reviewdelete(dataMap));
    
            result.putAll(this.reviewselectSearchWithPagination(dataMap));
            return result;
        }

    
    
     public Map reviewselectSearchWithPagination(Map dataMap) {
       //페이지 형성 위한 계산
        int totalCount = (int) this.reviewselectTotal(dataMap);
        
        int currentPage = 1;
        if(dataMap.get("currentPage") != null) {
            currentPage = Integer.parseInt((String)dataMap.get("currentPage"));    // from client in param
        }
        
        Paginations paginations = new Paginations(totalCount, currentPage);
        HashMap result = new HashMap<>();
        result.put("paginations", paginations); // 페이지에 대한 정보
        
        // page record 수
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Reviews.reviewselectSearchWithPagination";
        dataMap.put("pageScale", paginations.getPageScale());
        dataMap.put("pageBegin", paginations.getPageBegin());

        result.put("resultList", sharedDao.getList(sqlMapId, dataMap)); //표현된 레코드 정보
        return result;
    }

   
    public Object reviewselectTotal(Map dataMap) {
        String sqlMapId = "Reviews.reviewselectTotal";
    
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }    

    }


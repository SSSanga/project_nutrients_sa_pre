package com.project.project_nutrients.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;
import java.util.UUID;


@Service
@Transactional
public class MainService {
    @Autowired
    SharedDao sharedDao;

    // public Object selectInUID(Map dataMap) {
    //     String sqlMapId = "Infors.selectInUID";


    
    //     Object result = sharedDao.getList(sqlMapId, dataMap);
    //     return result;
    // }

        public String generateUUID() {
        return UUID.randomUUID().toString();
    }


    // 검색(조건-?)
    public Map selectSearch(Map dataMap) {
        String sqlMapId = "Infors.selectSearch";
        
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    public Object selectDetail(String COMMON_CODE_ID, Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Infors.selectDetail";
        dataMap.put("COMMON_CODE_ID", COMMON_CODE_ID);

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

        // MVC view 회원탈퇴? 악플삭제? admin이 관리
    public Object deleteAndSelectSearch(String UNIQUE_ID, Map dataMap) {
        dataMap.put("COMMON_CODE_ID", UNIQUE_ID);

        HashMap result = new HashMap<>();
        result.put("deleteCount", this.delete(dataMap));

        result.putAll(this.selectSearch(dataMap));
        return result;
    }

        //회원가입, 리뷰, Q&A 등록? 같음
        //COMMON_CODE_ID가 빈칸이면 uuid생성
    public Object insertAndSelectSearch(Map dataMap) {

        HashMap result = new HashMap<>();
        result.put("insertCount", this.insert(dataMap));

        result.putAll(this.selectSearch(dataMap));
        return result;
    }

        // 회원정보 수정 회원 = 전화번호, 주소, 이름 등/ admin = 회원 등급?
    public Object updateAndSelectSearch(String UNIQUE_ID,Map dataMap) {
        dataMap.put("COMMON_CODE_ID", UNIQUE_ID);
        
        HashMap result = new HashMap<>();
        result.put("updateCount", this.update(dataMap));

        result.putAll(this.selectSearch(dataMap));
        return result;
    }

    // public Object selectAll(String COMMON_CODE_ID) {
    //     // Object getOne(String sqlMapId, Object dataMap)
    //     String sqlMapId = "Infors.selectAll";
    //     HashMap dataMap = new HashMap<>();
    //     dataMap.put("COMMON_CODE_ID", COMMON_CODE_ID);

    //     Object result = sharedDao.getList(sqlMapId, dataMap);
    //     return result;
    // }

    // public Object selectDetail(String CAR_INFOR_ID) {
    //     // Object getOne(String sqlMapId, Object dataMap)
    //     String sqlMapId = "Infors.selectByUID";
    //     HashMap dataMap = new HashMap<>();
    //     dataMap.put("CAR_INFOR_ID", CAR_INFOR_ID);

    //     Object result = sharedDao.getOne(sqlMapId, dataMap);
    //     return result;
    // }

    // insert를 할때 insertAndSelectSearch에서 사용하는 코드
    public Object insert(Map dataMap) {
        String sqlMapId = "Infors.insert";
        if(dataMap.get("COMMON_CODE_ID").equals("")){
            String uuid = generateUUID();
            dataMap.put("COMMON_CODE_ID", uuid);
        } else{
        }
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    // update를 할때 updateAndSelectSearch에서 사용하는 코드
    public Object update(Map dataMap) {
        String sqlMapId = "Infors.update";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }


    // MVC view
    public Object delete(Map dataMap) {
        String sqlMapId = "Infors.delete";

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }
    
    // rest api
    public Object delete(String COMMON_CODE_ID) {
        String sqlMapId = "Infors.delete";
        HashMap dataMap = new HashMap<>();
        dataMap.put("COMMON_CODE_ID", COMMON_CODE_ID);

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    // 2PC 사용 안해요. 사용하라고 하면 코드 수정해볼께요.
    // public Object insertDouble(Map dataMap) {
    //     String sqlMapId = "Infors.insert";
    //     // sucess
    //     Object result = sharedDao.insert(sqlMapId, dataMap);
    //     // error
    //     result = sharedDao.insert(sqlMapId, dataMap);
    //     return result;
    // }

    public Object select(String PARENT_COMMON_CODE_ID) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Infors.select";
        HashMap dataMap = new HashMap<>();
        dataMap.put("PARENT_COMMON_CODE_ID", PARENT_COMMON_CODE_ID);

        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

}




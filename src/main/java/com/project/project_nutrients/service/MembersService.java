package com.project.project_nutrients.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.project_nutrients.dao.SharedDao;
import com.project.project_nutrients.utils.Commons;
import com.project.project_nutrients.utils.Paginations;

@Service
@Transactional
public class MembersService {
    
    @Autowired
    SharedDao sharedDao;

    @Autowired
    Commons commonUtils;

    @Autowired
    AuthsService authsService;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;


    public String generateUUID() {
    return UUID.randomUUID().toString();
    }

    public Object membersinsert(Map dataMap) {
        String PASSWORD = (String) dataMap.get("PASSWORD");
        dataMap.put("PASSWORD", bCryptPasswordEncoder.encode(PASSWORD));
        String sqlMapId = "Members.membersinsert";
        if(dataMap.get("UNIQUE_ID").equals("")){
        String uuid = generateUUID();
        dataMap.put("UNIQUE_ID", uuid);
        } else{
        }
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertWithAuths(Map dataMap){
        Object result = this.membersinsert(dataMap);
        result = authsService.authsinsert(dataMap);
        return result;
    }

    public Object selectByUID(Map dataMap) {
        String sqlMapId = "Members.selectByUID";

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectByUIDWithAuths(Map dataMap) {
        Map result = (Map) this.selectByUID(dataMap);
        dataMap.put("UNIQUE_ID", result.get("UNIQUE_ID"));
        result.putAll(authsService.selectWithUSERNAME(dataMap));
        return result;
    }

    public Object mypageDetail(Map dataMap) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Members.mypageDetail";
        dataMap.put("UNIQUE_ID", commonUtils.getUserID());
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object update(Map dataMap) {
        dataMap.put("UNIQUE_ID", commonUtils.getUserID());
        String PASSWORD = (String) dataMap.get("PASSWORD");
        dataMap.put("PASSWORD", bCryptPasswordEncoder.encode(PASSWORD));
        String sqlMapId = "Members.memberupdate";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object memberUpdateAndMypage(String UNIQUE_ID, Map dataMap) {
        dataMap.put("UNIQUE_ID", UNIQUE_ID);
        HashMap result = new HashMap<>();
        result.put("updateCount", this.update(dataMap));
        result.putAll((Map) this.mypageDetail(dataMap));
        return result;
    }

    public Map memberList(Map dataMap) {
        String sqlMapId = "Members.memberList";
        
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }
    // 1. 페이지네이션 위한 count
    public Object memberCnt (Map dataMap){
        String sqlMapId = "Members.selectcount";

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }
    // 2. memberlist + pagination 사용
    public Map membslistWithPaginations(Map dataMap) {
       
        String sqlMapId = "Members.selectwithPagination"; // list 불러오기 + pagination
        int totalCount = (int) this.memberCnt(dataMap); // count

        int currentPage = 1;
        if (dataMap.get("currentPage") != null) {
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

        result.put("resultList", sharedDao.getList(sqlMapId, dataMap)); // 표현된 레코드 정보.

        return result;
    }

    public Object deleteAndmemberList(String UNIQUE_ID, Map dataMap) {
        dataMap.put("UNIQUE_ID", UNIQUE_ID);

        HashMap result = new HashMap<>();
        result.put("deleteCount", this.delete(dataMap));

        result.putAll(this.membslistWithPaginations(dataMap));
        return result;
    }

    public Object delete(Map dataMap) {
        String sqlMapId = "Members.memberdelete";

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

        public Object deleteAndmemberauths(String UNIQUE_ID, Map dataMap) {
        dataMap.put("UNIQUE_ID", UNIQUE_ID);

        HashMap result = new HashMap<>();
        result.put("deleteCount", this.deleteauths(dataMap));
        result.putAll(this.membslistWithPaginations(dataMap));
        return result;
    }

        public Object deleteauths(Map dataMap) {
        String sqlMapId = "Auths.deleteauths";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

}

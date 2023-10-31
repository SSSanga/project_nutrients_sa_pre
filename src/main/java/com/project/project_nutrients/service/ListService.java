package com.project.project_nutrients.service;

import java.util.ArrayList;
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

public class ListService
{
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

    // xml에 withPagination 호출하는것.
    public HashMap listWithPaginations(Map dataMap)
    {
        // Mapper.xml의 selectSearchWithPagination에 parameter를 가져올것.
        // pagination 호출이 필요함. 이때 pagination 필요한것은 totalcount(xml query 존재함),
        // cuttentPage (client)
        // page record 수 : xml 의 limit 0,10 콕 집어져서 나와야함.
        // page 형성을 위한 계산.
        String sqlMapId = "Supplement.listwithpaginations";
        String totalsqlMapId = "Supplement.effectresult";
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

        result.put("resultList", sharedDao.getList(sqlMapId, dataMap)); // 표현된 레코드 정보.
        List<Map<String, Object>> resultList = (List<Map<String, Object>>) result.get("resultList");
        ArrayList totalList = new ArrayList<>();

        for (int i = 0; i < resultList.size(); i++)
        {
            Map<String, Object> product = resultList.get(i);
            String supp_id = (String) product.get("SUPP_ID");
            dataMap.put("SUPP_ID", supp_id);
            product.put("producteffect", sharedDao.getList(totalsqlMapId, dataMap));
            totalList.add(product);
            result.put("totalList", totalList);
        }
        return result;
    }

    // 삭제만 하기
    public Object delete(Map dataMap)
    {
        String sqlMapId = "Supplement.suppdelete";

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    // 삭제하고 불러오기
    public Object deleteAndList(String SUPP_ID, Map dataMap)
    {
        dataMap.put("SUPP_ID", SUPP_ID);
        HashMap result = new HashMap<>();

        result.put("delcnt", this.delete(dataMap));
        result.putAll((Map) this.listWithPaginations(dataMap));

        return result;
    }

    public Object selectSpec(String SUPP_ID, Map dataMap)
    {
        dataMap.put("SUPP_ID", SUPP_ID);
        HashMap result = new HashMap<>();

        result.putAll(this.selectID(SUPP_ID, dataMap)); // SUPP_ID 기본 정보
        result.putAll(this.selectEffect(SUPP_ID, dataMap)); // Update the method call with SUPP_ID_관련 효과
        result.putAll(this.selectComp(SUPP_ID, dataMap)); // Update the method call with SUPP_ID_관련 성분
        result.putAll(this.selectBad(SUPP_ID, dataMap)); // Update the method call with SUPP_ID_관련 부작용

        return result;
    }

    // 기본정보_SUPP_SPEC
    public Map selectID(String SUPP_ID, Map dataMap)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Supplement.selectspec";
        dataMap.put("SUPP_ID", SUPP_ID);
        HashMap result = new HashMap<>();
        result.put("resultID", sharedDao.getList(sqlMapId, dataMap));

        return result;
    }

    // 상세정보_effect-SUPP_ID
    public Map selectEffect(String SUPP_ID, Map dataMap)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Supplement.selecteffect";
        dataMap.put("SUPP_ID", SUPP_ID);
        HashMap result = new HashMap<>();
        result.put("resultEffect", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    // 상세정보_component-SUPP_ID
    public Map selectComp(String SUPP_ID, Map dataMap)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Supplement.selectcomp";
        dataMap.put("SUPP_ID", SUPP_ID);
        HashMap result = new HashMap<>();
        result.put("resultComp", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    // 상세정보_sidebad-SUPP_ID
    public Map selectBad(String SUPP_ID, Map dataMap)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "Supplement.selectbad";
        dataMap.put("SUPP_ID", SUPP_ID);
        HashMap result = new HashMap<>();
        result.put("resultBad", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    public String generateUUID()
    {
        return UUID.randomUUID().toString();
    }

    // insert 시작ㅠㅠ xml을 따로따로 갔다와야함. 아놔.. 망할.
    public Object insertpk(Map dataMap)
    {
        String sqlMapId = "Supplement.insertpk";
        if (dataMap.get("SUPP_ID").equals(""))
        {
            String uuid = generateUUID();
            dataMap.put("SUPP_ID", uuid);
        }
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertbad(Map dataMap)
    {
        String sqlMapId = "Supplement.insertbad";
        if (dataMap.get("SUPP_ID").equals(""))
        {
            String uuid = generateUUID();
            dataMap.put("SUPP_ID", uuid);
        }
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertcomp(Map dataMap)
    {
        String sqlMapId = "Supplement.insertcomp";
        if (dataMap.get("SUPP_ID").equals(""))
        {
            String uuid = generateUUID();
            dataMap.put("SUPP_ID", uuid);
        }
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertlist(Map dataMap)
    {
        String sqlMapId = "Supplement.insertlist";
        if (dataMap.get("SUPP_ID").equals(""))
        {
            String uuid = generateUUID();
            dataMap.put("SUPP_ID", uuid);
        }
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object listinsertandselect(Map dataMap)
    {
        HashMap result = new HashMap<>();
        result.put("insertpk", this.insertpk(dataMap));
        result.put("insertbad", this.insertbad(dataMap));
        result.put("insertcomp", this.insertcomp(dataMap));
        result.put("insertlist", this.insertlist(dataMap));
        result.putAll((Map) this.listWithPaginations(dataMap));
        return result;
    }

}

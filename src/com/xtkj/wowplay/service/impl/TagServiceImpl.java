package com.xtkj.wowplay.service.impl;

import com.xtkj.wowplay.dao.SortDao;
import com.xtkj.wowplay.dto.SortDTO;
import com.xtkj.wowplay.entity.Sort;
import com.xtkj.wowplay.service.SortService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/7/12 0012.
 */
@Service("sortService")
public class TagServiceImpl implements SortService {


    private SortDao sortDao;


    @Override
    public List<SortDTO> getAllSortList() {
        List<SortDTO> sortList = new ArrayList<SortDTO>();

        for (Sort sort : sortDao.queryAllSort()) {
            sortList.add(new SortDTO(sort.getId(),sort.getName(),sort.getPid()));
        }
        return  sortList;
    }

    public SortDao getSortDao() {
        return sortDao;
    }

    @Resource
    public void setSortDao(SortDao sortDao) {
        this.sortDao = sortDao;
    }
}

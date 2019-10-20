package service.impl;

import dao.InfoDao;
import dto.InfoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IndexService;

@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    private InfoDao infoDao;

    @Override
    public InfoDTO getIndex() {
        return infoDao.getById(1);
    }
}

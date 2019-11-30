package service.impl;

import dao.InfoDao;
import dao.SchoolDao;
import dto.InfoDTO;
import dto.SchoolDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IndexService;

@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    private InfoDao infoDao;

    @Autowired
    private SchoolDao schoolDao;


    @Override
    public InfoDTO getIndex() {
        return infoDao.getById(1);
    }

    @Override
    public SchoolDTO login(String userName, String password) {
        return schoolDao.getByUserNameAndPassword(userName, password);
    }
}

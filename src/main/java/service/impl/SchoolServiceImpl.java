package service.impl;

import dao.SchoolDao;
import dto.SchoolDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.SchoolService;

import java.util.List;

@Service
public class SchoolServiceImpl implements SchoolService {

    @Autowired
    private SchoolDao schoolDao;

    @Override
    public List<SchoolDTO> getList() {
        return schoolDao.getList();
    }

    @Override
    public SchoolDTO getById(Integer id) {
        return schoolDao.getById(id);
    }

    @Override
    public void add(SchoolDTO schoolDTO) {
        schoolDao.add(schoolDTO);
    }

    @Override
    public void update(SchoolDTO schoolDTO) {
        schoolDao.update(schoolDTO);
    }

    @Override
    public void deleteById(Integer id) {
        schoolDao.deleteById(id);
    }
}

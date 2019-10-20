package service;

import dto.SchoolDTO;

import java.util.List;

public interface SchoolService {
    List<SchoolDTO> getList();

    SchoolDTO getById(Integer id);

    void add(SchoolDTO schoolDTO);

    void update(SchoolDTO schoolDTO);

    void deleteById(Integer id);
}

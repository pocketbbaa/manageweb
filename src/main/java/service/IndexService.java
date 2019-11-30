package service;

import dto.InfoDTO;
import dto.SchoolDTO;

public interface IndexService {

    InfoDTO getIndex();

    SchoolDTO login(String userName, String password);
}

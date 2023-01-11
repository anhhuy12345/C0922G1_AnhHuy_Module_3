package model.repository;


import model.bean.Service;

import java.util.List;

public interface IServiceRepository {
    List<Service> findAllService();
    List<Service> searchService(String nameSearch, String standardRoomSearch);
    boolean insertService(Service service);
    boolean deleteService(int id);
    boolean updateService(Service service);
    Service selectService(int id);
}

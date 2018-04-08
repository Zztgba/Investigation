package inv.service;

import inv.pojo.User;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service("user")
public interface UserService {

    void insert (User user) throws Exception;

    boolean selectByName(User user) throws Exception;

    Map<String,Object> login(User user) throws Exception;

    Map<String,Object> refleshToP(User user)throws Exception;

    void selectById(Long id) throws Exception;

    boolean insertUser(User user) throws Exception;
}

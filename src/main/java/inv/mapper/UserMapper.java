package inv.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import inv.pojo.User;
import org.springframework.stereotype.Repository;

@Repository
public  interface UserMapper {

    User selectByName(@Param("user")User user);

    User login(@Param("user") User pojo);

    void insert(@Param("user") User user);

}

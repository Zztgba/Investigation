package inv.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import inv.pojo.Paper;
import org.springframework.stereotype.Repository;

@Repository
public interface PaperMapper {

    Paper selectByPid(@Param("pid") Long pid);

    List<Paper> selectByUserForPersonal (@Param("id") Long id);

    void insert(@Param("paper") Paper paper);

    Long selectLastInsert();

    List<Paper> selectAll();

    void updatePnum(@Param("pnum") Long pnum, @Param("pid")Long  pid);
}


package inv.service;

import inv.pojo.Paper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("paper")
public interface PaperService {

    Paper selectByPid(Long pid);

    Long insert(Paper paper);

    List<Paper> selectAll();

    void updatePnum (Long pnum,Long pid);
}

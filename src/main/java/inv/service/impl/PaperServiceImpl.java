package inv.service.impl;

import inv.mapper.PaperMapper;
import inv.pojo.Paper;
import inv.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PaperServiceImpl implements PaperService {

    @Autowired(required = false)
    private PaperMapper paperMapper;

    public Long insert(Paper paper) {
        paperMapper.insert(paper);
        Long pid = paperMapper.selectLastInsert();
        return pid;
    }

    public List<Paper> selectAll(){
        List<Paper> paperList=paperMapper.selectAll();
        return paperList;
    }

    public Paper selectByPid(Long pid) {
        return paperMapper.selectByPid(pid);
    }

    public void updatePnum(Long pnum, Long pid) {
        paperMapper.updatePnum(pnum+1, pid);
    }
}

package inv.service.impl;

import inv.mapper.AnswerMapper;
import inv.pojo.Answer;
import inv.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AnswerServiceImpl implements AnswerService {

    @Autowired(required = false)
    AnswerMapper answerMapper;

    public void insert(Answer answer) {
        answerMapper.insert(answer);
    }

    public List<Answer> selectByQid(Long qid) {

        return answerMapper.selectByQid(qid);
    }

    public Long selectByAid(Long aid) {
        return answerMapper.selectByAid(aid);
    }

    public void updateAnswernum(Long aid, Long answernum) {
        answerMapper.updateAnswernum(aid,answernum+1);
    }
}

package inv.service.impl;

import inv.mapper.QuestionMapper;
import inv.pojo.Question;
import inv.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class QuestionServiceImpl implements QuestionService {

    @Autowired(required = false)
    QuestionMapper questionMapper;

    public Long insert(Question question) {
        questionMapper.insert(question);
        return questionMapper.selectLastInsert();
    }

    public int allQuestionForPaper(Long pid) {
        return questionMapper.allQuestionForPaper(pid);
    }

    public List<Question> selectByPid(Long pid) {

        return questionMapper.selectByPID(pid);
    }
}

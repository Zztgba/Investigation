package inv.service;

import inv.pojo.Question;

import java.util.List;

public interface QuestionService {
    Long insert(Question question);

    int allQuestionForPaper(Long pid);

    List<Question> selectByPid(Long pid);
}

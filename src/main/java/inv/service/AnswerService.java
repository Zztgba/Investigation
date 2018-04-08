package inv.service;

import inv.pojo.Answer;

import java.util.List;

public interface AnswerService {
    void insert (Answer answer);

    List<Answer> selectByQid(Long qid);

    Long selectByAid(Long aid);

    void updateAnswernum(Long aid,Long answernum);
}

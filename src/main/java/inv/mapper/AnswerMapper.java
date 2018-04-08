package inv.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import inv.pojo.Answer;
import org.springframework.stereotype.Repository;

@Repository
public interface AnswerMapper {
    void insert(@Param("answer") Answer answer);

    List<Answer> selectByQid(@Param("qid") Long qid);

    Long selectByAid(@Param("aid") Long aid);

    void updateAnswernum(@Param("aid") Long aid,@Param("answernum") Long answernum);
}

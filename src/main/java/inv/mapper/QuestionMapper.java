package inv.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import inv.pojo.Question;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionMapper {

    List<Question> selectByPID(@Param("pid") Long pid);

    void insert (@Param("question") Question question);

    Long selectLastInsert();

    int allQuestionForPaper(@Param("pid") Long pid);
}

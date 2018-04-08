package inv.test;

import inv.mapper.QuestionMapper;
import inv.pojo.Question;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class test {

    @Autowired
    public static QuestionMapper questionMapper ;

    public static void main(String[] args) {

        Long i = Long.valueOf(1);
        List<Question> q1 =questionMapper.selectByPID(i);
    }
}

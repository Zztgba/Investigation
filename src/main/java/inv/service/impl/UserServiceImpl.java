package inv.service.impl;

import inv.mapper.*;
import inv.pojo.*;
import inv.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    private List<Paper> paperList = new ArrayList<Paper>();
    private List<Question> queslist = new ArrayList<Question>();

    @Autowired(required = false)
    private UserMapper userMapper;

    @Autowired(required = false)
    private PaperMapper paperMapper;

    @Autowired(required = false)
    private QuestionMapper questionMapper;

    @Autowired(required = false)
    private AnswerMapper answerMapper;


    public Map<String,Object> login(User user) throws Exception {

        Map<String,Object> backObject=new HashMap<String, Object>();
            User u = userMapper.login(user);
            if(u==null){
               return backObject;
            }

            paperList = paperMapper.selectByUserForPersonal(u.getId());

            backObject.put("user",u);
            backObject.put("papers",paperList);

        for(int i=0;i<paperList.size();i++){
            queslist.addAll(questionMapper.selectByPID(Long.valueOf(paperList.get(i).getPid())));
            backObject.put("queslist",queslist);
        }
            return backObject;
    }

    public Map<String,Object> refleshToP(User u){
        Map<String,Object> backObject=new HashMap<String, Object>();

        paperList = paperMapper.selectByUserForPersonal(u.getId());

        backObject.put("papers",paperList);

        for(int i=0;i<paperList.size();i++){
            queslist.addAll(questionMapper.selectByPID(Long.valueOf(paperList.get(i).getPid())));
            backObject.put("queslist",queslist);
        }
        return backObject;
    }

    public boolean selectByName(User user) throws Exception {
        User u =userMapper.selectByName(user);
        if(u== null){
            return true;
        }
        return false;
    }

    public void insert(User user){
            userMapper.insert(user);
    }

    public void selectById(Long id) {

    }

    public boolean insertUser(User user) {

        try {
            userMapper.insert(user);
        }catch (Exception e){
            return false;
        }
        return true;
    }
}

package inv.controller;

import inv.pojo.*;
import inv.service.AnswerService;
import inv.service.PaperService;
import inv.service.QuestionService;
import inv.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

@Controller
@RequestMapping({"/user"})
public class UserController {

    private Map<String,Object> map;

    @Autowired
    private PaperService paperService;
    @Autowired
    private QuestionService questionService;
    @Autowired
    private AnswerService answerService;
    @Autowired
    private UserService userService;

    @RequestMapping({"/preinsert"})
    public String preInsert(){
        return "login";
    }

    @RequestMapping({"/index"})
    public String prelogin(){
        return "index";
    }

    @RequestMapping({"/insert"})
    public String insert(User user ,HttpSession session) throws Exception {
        if (userService.selectByName(user)){
            userService.insert(user);
            session.setAttribute("user",user);
            return "personal_new";
        }
        else {
            return "login1";
        }
    }

    @RequestMapping({"/login"})
    public String login(User user,HttpServletRequest req,HttpSession session)throws Exception{
        map = userService.login(user);

        if(map.size()==0){
            req.setAttribute("mes","账号密码有误");
            return "login";
        }

        for(Entry<String, Object> one: map.entrySet())
        {
            if(one.getKey().equals("user"))
            {
                User reuser=(User)one.getValue();
                session.setAttribute("user",reuser);
                session.setAttribute("id",reuser.getId());
            }else if(one.getKey().equals("papers"))
            {
                List<Paper> paperlist=(List<Paper>)one.getValue();
                req.setAttribute("paperlist",paperlist);
            }else if (one.getKey().equals("queslist")){
                List<Question> queslist = (List<Question>) one.getValue();
                req.setAttribute("queslist",queslist);
            }



        }

        return "personal";
    }

    @RequestMapping("/paper")
    public String paperForId(HttpServletRequest req){
        String id=req.getParameter("pid");
        Long pid = Long.valueOf(id);
        Paper paper = paperService.selectByPid(pid);
        req.setAttribute("paper",paper);

        List<Question> questions = questionService.selectByPid(pid);
        req.setAttribute("questionlist",questions);

        List<Answer> answers = new ArrayList<Answer>();
        for(Question q:questions) {
            answers.addAll( answerService.selectByQid(q.getQid()));
        }
        req.setAttribute("answerlist",answers);

        return "paper";
    }
}

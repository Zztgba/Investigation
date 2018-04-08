package inv.controller;

import inv.pojo.Answer;
import inv.pojo.Paper;
import inv.pojo.Question;
import inv.pojo.User;
import inv.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping({"/paper"})
public class PaperController {

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
    public String preinsertPaper (){
        return "redact1";
    }

    @RequestMapping({"/insert"})
    public String insertPaper (HttpServletRequest req, HttpSession session, Paper paper , Question question){
        paper.setUid((Long)session.getAttribute("id"));
        paper.setDate(new Date());
        paper.setPnum((long) 0);

        Long pid=paperService.insert(paper);

        question.setPid(pid);
        Long qid = questionService.insert(question);

        insertAnswer(req,qid);

        session.setAttribute("pid",pid);

        req.setAttribute("Qno",questionService.allQuestionForPaper(pid)+1);
        return "redact2";
    }

    @RequestMapping({"/insertnext"})
    public String insertQuestion (HttpServletRequest req, HttpSession session , Question question ){
        Long p = (Long) session.getAttribute("pid");
        question.setPid(p);
        Long qid = questionService.insert(question);

        insertAnswer(req,qid);

        req.setAttribute("Qno",questionService.allQuestionForPaper(p)+1);
        return "redact2";
    }

    @RequestMapping("/completed")
    public String completedInsert(HttpServletRequest req, HttpSession session , Question question ) throws Exception {
        question.setPid((Long) session.getAttribute("pid"));
        Long qid = questionService.insert(question);

        insertAnswer(req,qid);
        User u = (User)session.getAttribute("user");
        Map<String,Object> map=userService.refleshToP(u);
        for(Map.Entry<String, Object> one: map.entrySet()) {
            if (one.getKey().equals("papers")) {
                    List<Paper> paperlist = (List<Paper>) one.getValue();
                    req.setAttribute("paperlist", paperlist);
                } else if (one.getKey().equals("queslist")) {
                    List<Question> queslist = (List<Question>) one.getValue();
                    req.setAttribute("queslist", queslist);
                }
            }
        return "personal";
    }

    @RequestMapping("/list")
    public String paperList(HttpServletRequest req){

        List<Paper> paperList = paperService.selectAll();

        req.setAttribute("paperlist",paperList);
        return "second";
    }

    @RequestMapping("/details")
    public String getPaperDetails (@RequestParam("pid")Long pid,HttpServletRequest req){
        Paper paper = paperService.selectByPid(pid);
        req.setAttribute("paper",paper);

        List<Question> questions = questionService.selectByPid(pid);
        req.setAttribute("questions" ,questions);

        List<Answer> answers = new ArrayList<Answer>();
        for(Question q: questions){
            answers.addAll(answerService.selectByQid(q.getQid()));
        }
        req.setAttribute("answers",answers);

        return "survery";
    }

    @RequestMapping("/add")
    public String addAnswerNum(HttpServletRequest req ){
        String paperid = req.getParameter("pid");
        Long pid=Long.valueOf(paperid);
        Paper paper = paperService.selectByPid(pid);
        paperService.updatePnum(paper.getPnum() , pid);


        for(int i=1;i<=10;i++){
            if(req.getParameter(String.valueOf(i))==null){
                continue;
            }
            String aid = req.getParameter(String.valueOf(i));
            Long answernum = answerService.selectByAid(Long.valueOf(aid));
            answerService.updateAnswernum(Long.valueOf(aid),answernum);
        }
        return paperList(req);
    }


    public  void insertAnswer(HttpServletRequest req,Long qid){
        Answer answer =new Answer();
        for(int i = 0;i<4 ;i++){
            String s = req.getParameter("allselect"+i);
            answer.setAns(s);
            answer.setQid(qid);
            answerService.insert(answer);
        }
    }

}

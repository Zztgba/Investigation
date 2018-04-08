package inv.pojo;

import java.io.Serializable;
import java.util.List;

public class Answer implements Serializable{
  private Long aid;
  private String ans;
  private Long answernum;
  private Long qid;

  public Long getQid() {
    return qid;
  }

  public void setQid(Long qid) {
    this.qid = qid;
  }

  public Long getAid() {
    return aid;
  }

  public void setAid(Long aid) {
    this.aid = aid;
  }

  public String getAns() {
    return ans;
  }

  public void setAns(String ans) {
    this.ans = ans;
  }

  public Long getAnswernum() {
    return answernum;
  }

  public void setAnswernum(Long answernum) {
    this.answernum = answernum;
  }
}

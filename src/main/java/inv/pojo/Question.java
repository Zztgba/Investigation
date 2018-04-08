package inv.pojo;

public class Question {
  private Long qid;
  private String question;
  private Long pid;

  public Long getPid() {
    return pid;
  }

  public void setPid(Long pid) {
    this.pid = pid;
  }

  public Long getQid() {
    return qid;
  }

  public void setQid(Long qid) {
    this.qid = qid;
  }

  public String getQuestion() {
    return question;
  }

  public void setQuestion(String question) {
    this.question = question;
  }
}

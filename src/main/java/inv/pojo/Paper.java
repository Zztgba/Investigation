package inv.pojo;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Paper {

  public Long pnum;
  private Long pid;
  private String title;
  private String date;
  private Long uid;
  private String type;
  public static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

  public Long getPnum() {
    return pnum;
  }

  public void setPnum(Long pnum) {
    this.pnum = pnum;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getDate() {
    return date;
  }

  public void setDate(Date date) {
    this.date=df.format(date);
  }

  public Long getUid() {
    return uid;
  }

  public void setUid(Long uid) {
    this.uid = uid;
  }

  public Long getPid() {
    return pid;
  }

  public void setPid(Long pid) {
    this.pid = pid;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }
}

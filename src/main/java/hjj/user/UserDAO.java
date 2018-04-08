/*    */ package hjj.user;
/*    */ 
/*    */ import hjj.jd.Jdbc;
/*    */ import java.sql.Connection;
/*    */ import java.sql.PreparedStatement;
/*    */ import java.sql.ResultSet;
/*    */ 
/*    */ public class UserDAO
/*    */ {
/*  8 */   private PreparedStatement psta = null;
/*  9 */   Boolean flage = Boolean.valueOf(false);
/*    */ 
/* 11 */   public Boolean login(User user) throws Exception { Jdbc jd = new Jdbc();
/* 12 */     String sql = "select * from user where name=? and password=?";
/* 13 */     this.psta = jd.getConnection().prepareStatement(sql);
/*    */     try {
/* 15 */       this.psta.setString(1, user.getName());
/* 16 */       this.psta.setString(2, user.getPassword());
/* 17 */       ResultSet re = this.psta.executeQuery();
/* 18 */       while (re.next()) {
/* 19 */         re.getInt("id");
/* 20 */         user.setId(re.getInt(1));
/* 21 */         this.flage = Boolean.valueOf(true);
/*    */       }
/* 23 */       re.close();
/* 24 */       this.psta.close();
/*    */     } catch (Exception e) {
/* 26 */       e.printStackTrace();
/*    */     } finally {
/* 28 */       jd.close();
/*    */     }
/* 30 */     return this.flage; }
/*    */ 
/*    */   public void change(User user) {
/* 33 */     Jdbc jd = new Jdbc();
/* 34 */     String sql = "update user set password=? where id=?";
/*    */     try {
/* 36 */       this.psta = jd.getConnection().prepareStatement(sql);
/* 37 */       this.psta.setString(1, user.getNew_password());
/* 38 */       this.psta.setInt(2, user.getId());
/* 39 */       this.psta.executeUpdate();
/* 40 */       this.psta.close();
/*    */     } catch (Exception e) {
/* 42 */       e.printStackTrace();
/*    */     } finally {
/* 44 */       jd.close();
/*    */     }
/*    */   }
/*    */ }

/* Location:           F:\Apache\webapps\jdsyzx\WEB-INF\classes\
 * Qualified Name:     hjj.user.UserDAO
 * JD-Core Version:    0.6.2
 */
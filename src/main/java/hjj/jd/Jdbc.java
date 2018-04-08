/*    */ package hjj.jd;
/*    */ 
/*    */ import java.sql.Connection;
/*    */ import java.sql.DriverManager;
/*    */ 
/*    */ public class Jdbc
/*    */ {
/*  6 */   String DBDRIVER = "com.mysql.jdbc.Driver";
/*  7 */   String DBURL = "jdbc:mysql://localhost:3306/jdsyzx?user=root&password=hjj&useUnicode=true&CharacterEncoding=utf-8";
/*  8 */   Connection con = null;
/*    */ 
/*    */   public Jdbc() {
/*    */     try {
/* 12 */       Class.forName(this.DBDRIVER);
/* 13 */       this.con = DriverManager.getConnection(this.DBURL);
/*    */     } catch (Exception e) {
/* 15 */       e.printStackTrace();
/*    */     }
/*    */   }
/*    */ 
/* 19 */   public Connection getConnection() { return this.con; }
/*    */ 
/*    */   public void close()
/*    */   {
/*    */     try {
/* 24 */       this.con.close();
/*    */     } catch (Exception e) {
/* 26 */       e.printStackTrace();
/*    */     }
/*    */   }
/*    */ }

/* Location:           F:\Apache\webapps\jdsyzx\WEB-INF\classes\
 * Qualified Name:     hjj.jd.Jdbc
 * JD-Core Version:    0.6.2
 */
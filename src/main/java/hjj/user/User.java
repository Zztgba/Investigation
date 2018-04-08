/*    */ package hjj.user;
/*    */ 
/*    */ public class User
/*    */ {
/*    */   private String name;
/*    */   private int id;
/*    */   private String password;
/*    */   private String old_password;
/*    */   private String new_password;
/*    */   private String replace_pass;
/*    */   private String rand;
/*    */ 
/*    */   public String getOld_password()
/*    */   {
/* 12 */     return this.old_password;
/*    */   }
/*    */   public void setOld_password(String old_password) {
/* 15 */     this.old_password = old_password;
/*    */   }
/*    */   public String getNew_password() {
/* 18 */     return this.new_password;
/*    */   }
/*    */   public void setNew_password(String new_password) {
/* 21 */     this.new_password = new_password;
/*    */   }
/*    */   public String getReplace_pass() {
/* 24 */     return this.replace_pass;
/*    */   }
/*    */   public void setReplace_pass(String replace_pass) {
/* 27 */     this.replace_pass = replace_pass;
/*    */   }
/*    */   public String getName() {
/* 30 */     return this.name;
/*    */   }
/*    */   public void setName(String name) {
/* 33 */     this.name = name;
/*    */   }
/*    */   public String getPassword() {
/* 36 */     return this.password;
/*    */   }
/*    */   public void setPassword(String password) {
/* 39 */     this.password = password;
/*    */   }
/*    */   public String getRand() {
/* 42 */     return this.rand;
/*    */   }
/*    */   public void setRand(String rand) {
/* 45 */     this.rand = rand;
/*    */   }
/*    */   public int getId() {
/* 48 */     return this.id;
/*    */   }
/*    */   public void setId(int id) {
/* 51 */     this.id = id;
/*    */   }
/*    */ }

/* Location:           F:\Apache\webapps\jdsyzx\WEB-INF\classes\
 * Qualified Name:     hjj.user.User
 * JD-Core Version:    0.6.2
 */
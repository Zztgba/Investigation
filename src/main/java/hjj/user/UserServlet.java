/*     */ package hjj.user;
/*     */ 
/*     */ import java.io.IOException;
/*     */ import javax.servlet.RequestDispatcher;
/*     */ import javax.servlet.ServletException;
/*     */ import javax.servlet.http.HttpServlet;
/*     */ import javax.servlet.http.HttpServletRequest;
/*     */ import javax.servlet.http.HttpServletResponse;
/*     */ import javax.servlet.http.HttpSession;
/*     */ 
/*     */ public class UserServlet extends HttpServlet
/*     */ {
    /*  14 */   private HttpServletRequest req = null;
    /*  15 */   private HttpServletResponse res = null;
    /*  16 */   private HttpSession session = null;
    /*  17 */   private String status = null;
    /*  18 */   private String path = null;
    /*  19 */   UserDAO udao = new UserDAO();
    /*     */
/*  21 */   public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { doPost(request, response); }
    /*     */
/*     */   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*  24 */     request.setCharacterEncoding("utf-8");
/*  25 */     this.req = request;
/*  26 */     this.res = response;
/*  27 */     this.session = this.req.getSession();
/*  28 */     this.status = this.req.getParameter("status");
/*  29 */     if (this.status != null) {
/*  30 */       if (this.status.equals("prelogin")) {
/*  31 */         this.path = "WEB-INF/user/user.jsp";
/*     */       }
/*  33 */       if (this.status.equals("login")) {
/*  34 */         login();
/*     */       }
/*  36 */       if (this.status.equals("prechange")) {
/*  37 */         prechange();
/*     */       }
/*  39 */       if (this.status.equals("change")) {
/*  40 */         change();
/*     */       }
/*  42 */       if (this.status.equals("success3")) {
/*  43 */         this.path = "WEB-INF/user/changepassword.jsp";
/*     */       }
/*     */     }
/*  46 */     this.req.getRequestDispatcher(this.path).forward(this.req, this.res);
/*     */   }
    /*     */
/*     */   public void login()
/*     */   {
/*  87 */     User user = bulivo();
/*     */ 
/*  89 */     String rand1 = this.req.getParameter("rand");
/*  90 */     String rand2 = null;
/*     */ 
/*  92 */     if (rand1 != null) {
/*  93 */       //rand1 = this.req.getParameter("rand");
/*  94 */       //rand2 = (String)this.session.getAttribute("rand");
/*     */       try {
/*  96 */         if (this.udao.login(user).booleanValue()) {
/*  97 */           this.session.setAttribute("id", Integer.valueOf(user.getId()));
/*  98 */           this.session.setAttribute("name", user.getName());
/*  99 */           this.session.setAttribute("password", user.getPassword());
/* 100 */           this.session.setAttribute("user", user);
/* 101 */           this.path = "base/index.jsp";
/*     */         } else {
/* 103 */           String mes = rand1.equals("rand2") ? "密码错误" : "验证码错误";
/*     */ 
/* 105 */           this.req.setAttribute("mes", mes);
/* 106 */           this.path = "WEB-INF/user/user.jsp";
/*     */         }
/*     */       } catch (Exception e) {
/* 109 */         e.printStackTrace();
/*     */       }
/*     */     }
/*     */   }
    /*     */
/* 114 */   public void prechange() { this.path = "WEB-INF/user/changepassword.jsp"; }
    /*     */
/*     */   public void change() {
/* 117 */     User user = bulivo();
/* 118 */     User duer = (User)this.session.getAttribute("user");
/* 119 */     if ((user.getReplace_pass().equals(user.getNew_password())) && (user.getOld_password().equals(duer.getPassword())))
/*     */       try {
/* 121 */         this.udao.change(user);
/* 122 */         this.session.setAttribute("password", user.getNew_password());
/* 123 */         this.req.setAttribute("success", "密码修改成功");
/*     */       } catch (Exception e) {
/* 125 */         e.printStackTrace();
/*     */       }
/* 127 */     else if (!user.getReplace_pass().equals(user.getNew_password()))
/* 128 */       this.req.setAttribute("mes", "两次输入的密码不相同");
/*     */     else {
/* 130 */       this.req.setAttribute("message", "输入的密码错误");
/*     */     }
/*     */ 
/* 133 */     this.path = "WEB-INF/user/changepassword.jsp";
/*     */   }
    /*     */   public User bulivo() {
/* 136 */     User user = new User();
/* 137 */     String id = this.req.getParameter("id");
/* 138 */     String name = this.req.getParameter("name");
/* 139 */     String password = this.req.getParameter("password");
/* 140 */     String rand = this.req.getParameter("rand");
/* 141 */     String replace_pass = this.req.getParameter("replace_pass");
/* 142 */     String new_password = this.req.getParameter("new_password");
/* 143 */     String old_password = this.req.getParameter("old_password");
/* 144 */     if (id != null) {
/* 145 */       user.setId(Integer.parseInt(id));
/*     */     }
/* 147 */     if (name != null) {
/* 148 */       user.setName(name);
/*     */     }
/* 150 */     if (password != null) {
/* 151 */       user.setPassword(password);
/*     */     }
/* 153 */     if (rand != null) {
/* 154 */       user.setRand(rand);
/*     */     }
/* 156 */     if (replace_pass != null) {
/* 157 */       user.setReplace_pass(replace_pass);
/*     */     }
/* 159 */     if (new_password != null) {
/* 160 */       user.setNew_password(new_password);
/*     */     }
/* 162 */     if (old_password != null) {
/* 163 */       user.setOld_password(old_password);
/*     */     }
/* 165 */     return user;
/*     */   }
/*     */ }

/* Location:           F:\Apache\webapps\jdsyzx\WEB-INF\classes\
 * Qualified Name:     hjj.user.UserServlet
 * JD-Core Version:    0.6.2
 */
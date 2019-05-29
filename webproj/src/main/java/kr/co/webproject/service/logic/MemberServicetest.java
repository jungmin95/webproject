package kr.co.webproject.service.logic;
/*
 * package kr.co.webproject.service.logic;
 * 
 * import java.io.PrintWriter;
 * 
 * import javax.inject.Inject; import javax.servlet.http.HttpServletResponse;
 * 
 * import org.springframework.stereotype.Service;
 * 
 * import kr.co.webproject.domain.User; import
 * kr.co.webproject.service.MemberServiceInterface;
 * 
 * @Service public class MemberService implements MemberServiceInterface{
 * 
 * @Inject private User manager;
 * 
 * // 아이디 중복 검사(AJAX)
 * 
 * @Override public void check_id(String id, HttpServletResponse response)
 * throws Exception { PrintWriter out = response.getWriter();
 * out.println(manager.check_id(id)); out.close(); }
 * 
 * // 이메일 중복 검사(AJAX)
 * 
 * @Override public void check_email(String email, HttpServletResponse response)
 * throws Exception { PrintWriter out = response.getWriter();
 * out.println(manager.check_email(email)); out.close(); }
 * 
 * // 회원가입
 * 
 * @Override public int join_member(User member, HttpServletResponse response)
 * throws Exception { response.setContentType("text/html;charset=utf-8");
 * PrintWriter out = response.getWriter();
 * 
 * if (manager.check_id(member.getId()) == 1) { out.println("<script>");
 * out.println("alert('동일한 아이디가 있습니다.');"); out.println("history.go(-1);");
 * out.println("</script>"); out.close(); return 0; } else if
 * (manager.check_email(member.getEmail()) == 1) { out.println("<script>");
 * out.println("alert('동일한 이메일이 있습니다.');"); out.println("history.go(-1);");
 * out.println("</script>"); out.close(); return 0; } else {
 * manager.join_member(member); return 1; } } }
 */
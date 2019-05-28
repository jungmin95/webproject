
/*
 * package kr.co.webproject.controller;
 * 
 * import javax.servlet.http.HttpServletResponse;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.ModelAttribute; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.servlet.mvc.support.RedirectAttributes;
 * 
 * import kr.co.webproject.domain.User; import
 * kr.co.webproject.service.logic.MemberService;
 * 
 * @Controller
 * 
 * @RequestMapping("/user/*") public class UserController {
 * 
 * // ȸ�� ���� �� �̵�
 * 
 * @RequestMapping(value = "/userJoinForm.do") public String userJoinForm()
 * throws Exception { return "/user/userJoinForm"; }
 * 
 * @Autowired private UserServiceInterface service;
 * 
 * // ���̵� �ߺ� �˻�(AJAX)
 * 
 * @RequestMapping(value = "/check_id.do", method = RequestMethod.POST) public
 * void check_id(@RequestParam("id") String id, HttpServletResponse response)
 * throws Exception { service.check_id(id, response); }
 * 
 * // �̸��� �ߺ� �˻�(AJAX)
 * 
 * @RequestMapping(value = "/check_email.do", method = RequestMethod.POST)
 * public void check_email(@RequestParam("email") String email,
 * HttpServletResponse response) throws Exception { service.check_email(email,
 * response); }
 * 
 * // ȸ�� ����
 * 
 * @RequestMapping(value = "/join_user.do", method = RequestMethod.POST) public
 * String join_user(@ModelAttribute User user, RedirectAttributes rttr,
 * HttpServletResponse response) throws Exception {
 * rttr.addFlashAttribute("result", service.join_member(user, response)); return
 * "redircet:./userJoinForm.do"; } }
 */
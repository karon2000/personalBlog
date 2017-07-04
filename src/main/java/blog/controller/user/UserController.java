package blog.controller.user;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import blog.service.user.UserService;
import blog.vo.user.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	@RequestMapping("/*")
	public void url() {}
	
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public ModelAndView loginForm(HttpServletRequest request){
		
		String referrer = request.getHeader("Referer");
		request.getSession().setAttribute("loginRedirect", referrer);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/loginform");
		return mv;
	}	
	
	@RequestMapping("join")
	public String userJoin(HttpServletRequest request, UserVo userVo) throws Exception {
		int result = userService.userJoin(userVo);
		return "redirect:/";
	}
}


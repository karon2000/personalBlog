package blog.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping("/*")
	public void url() {}
	
	@RequestMapping("/login")
	public String login()
	{
//		System.out.println("�α��� Ȯ��");
		return "home";
	}
}

package blog.controller.main;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blog.service.category.CategoryService;
import blog.vo.category.CategoryVo;
import blog.vo.user.UserVo;


@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@Autowired
	CategoryService categoryService;
	
	
	@RequestMapping("")
	public String main() {
		return "blog/main";
	}
	@RequestMapping("/{id}")
	public String userBlog(@PathVariable String id) {
		return "blog/personalmain";
	}
	@RequestMapping("/{id}/setting")
	public ModelAndView setting(@PathVariable String id, Principal principal)
	{
		//올바른 접근인지 체크
		if (principal != null) {
			UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if(id.equals(user.getId()))
			{
				//올바른 접근이라면
				//현재 카테고리 목록을 가져온다.
				System.out.println(id);
				ModelAndView mv = new ModelAndView();
				List<CategoryVo> categoryList = categoryService.selectAll(id);
				mv.addObject("categoryList", categoryList);
				mv.setViewName("blog/setting");
				return mv;
			}
		}
		//에러페이지 이동
		return null;
	}
	
/*	@RequestMapping("/search")
	public ModelAndView search(String name)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("username","성명");
		List<Profile> profile = profileService.ProfileSelect(name);
		mv.addObject("profile", profile);  
		List<(EduBackground> eduBackground = eduBackgroundService.eduBackgroundSelect(name);
		mv.setViewName("이동할 페이지"); //이동할 페이지
		return mv;
	}*/
}

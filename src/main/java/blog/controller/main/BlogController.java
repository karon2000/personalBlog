package blog.controller.main;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@RequestMapping("/")
	public String main() {
		return "blog/main";
	}
	
	@RequestMapping("/{id}")
	public String userBlog(@PathVariable String id) {
		return null;
	}
}

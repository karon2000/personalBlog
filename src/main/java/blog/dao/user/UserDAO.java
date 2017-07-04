package blog.dao.user;

import blog.vo.user.UserVo;

public interface UserDAO {

	
	int userJoin(UserVo userVo);
	
	UserVo userSearchById(String id);
	
}

package blog.service.user;

import blog.vo.user.UserVo;

public interface UserService {

	int userJoin(UserVo userVo);

	UserVo userSearchById(String id);

	UserVo userInfo(String id);
}

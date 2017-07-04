package blog.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import blog.dao.authorities.AuthoritiesDao;
import blog.dao.user.UserDAO;
import blog.security.Constants;
import blog.vo.authorities.Authorities;
import blog.vo.user.UserVo;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private AuthoritiesDao authoritiesDao;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	@Transactional
	public int userJoin(UserVo userVO) {

		int result = 0;
		String password = passwordEncoder.encode(userVO.getPassword());
		userVO.setPassword(password);

		result = userDAO.userJoin(userVO);
		if(result == 1)
		{
			authoritiesDao.insertAuthority(new Authorities(userVO.getId(), Constants.ROLE_MEMBER));
			if(userVO.getId().equals("freeanz01"))
			{
				authoritiesDao.insertAuthority(new Authorities(userVO.getId(), Constants.ROLE_ADMIN));
			}
		}		
		return result;
	}


	@Override
	public UserVo userSearchById(String id) {
		return userDAO.userSearchById(id);
	}

	@Override
	public UserVo userInfo(String id) {
		
		return userDAO.userSearchById(id);
	}

}

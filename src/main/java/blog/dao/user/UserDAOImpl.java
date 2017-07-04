package blog.dao.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blog.vo.user.UserVo;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int userJoin(UserVo userVo) {

		return sqlSession.insert("userMapper.userJoin",userVo);
	}

	@Override
	public UserVo userSearchById(String id) {
		
		return sqlSession.selectOne("userMapper.userSearchById",id);
	}

	
}

package blog.dao.authorities;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blog.vo.authorities.Authorities;


@Repository
public class AuthoritiesDaoImpl implements AuthoritiesDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Authorities> selectAuthoritiesByUsername(String username) {
		
		return sqlSession.selectList("authoritiesMapper.selectAuthorityByUserName", username);
	}

	@Override
	public int insertAuthority(Authorities authorities) {
		return sqlSession.insert("authoritiesMapper.insertAuthority",authorities);
	}

}

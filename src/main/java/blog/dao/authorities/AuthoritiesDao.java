package blog.dao.authorities;

import java.util.List;

import blog.vo.authorities.Authorities;

public interface AuthoritiesDao {
	
	public List<Authorities> selectAuthoritiesByUsername(String username);

	
	public int insertAuthority(Authorities authorities);
}

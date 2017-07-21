package blog.dao.category;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.vo.category.CategoryVo;


@Service
public class CategoryDAOImpl implements CategoryDAO {


	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CategoryVo> selectAll(String id) {
		
		return sqlSession.selectList("categoryMapper.selectAll",id);
	}

	@Override
	public int insertCategory(CategoryVo category) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCategory(int number) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCategory(CategoryVo category) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int orderCategory(int orderNum) {
		// TODO Auto-generated method stub
		return 0;
	}

}

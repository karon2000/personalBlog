package blog.service.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.dao.category.CategoryDAO;
import blog.vo.category.CategoryVo;


@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDAO categoryDAO;
	
	@Override
	public List<CategoryVo> selectAll(String id) {
		
		return categoryDAO.selectAll(id);
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

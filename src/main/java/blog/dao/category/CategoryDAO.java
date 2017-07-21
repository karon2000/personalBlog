package blog.dao.category;

import java.util.List;

import blog.vo.category.CategoryVo;

public interface CategoryDAO {
	// 카테고리 조회
	List<CategoryVo> selectAll(String id);
	// 카테고리 추가
	int insertCategory(CategoryVo category);
	// 카테고리 삭제
	int deleteCategory(int number);
	// 카테고리 수정
	int updateCategory(CategoryVo category);
	// 카테고리 순서 변경
	int orderCategory(int orderNum);
}

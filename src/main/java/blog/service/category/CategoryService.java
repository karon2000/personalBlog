package blog.service.category;

import java.util.List;

import blog.vo.category.CategoryVo;

public interface CategoryService {

	// ī�װ��� ��ȸ
	List<CategoryVo> selectAll(String id);
	// ī�װ��� �߰�
	int insertCategory(CategoryVo category);
	// ī�װ��� ����
	int deleteCategory(int number);
	// ī�װ��� ����
	int updateCategory(CategoryVo category);
	// ī�װ��� ���� ����
	int orderCategory(int orderNum);
}
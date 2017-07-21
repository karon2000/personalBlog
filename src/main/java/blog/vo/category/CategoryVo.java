package blog.vo.category;

public class CategoryVo {

	private String id; //블로그 아이디
	private int orderNum;  //순서 변경 및 정렬을 위한 것
	private int type; //카테고리 타입 1.일반글 2.비밀글
	private String categoryName; //카테고리 이름
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
	
}

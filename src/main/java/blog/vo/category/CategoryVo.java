package blog.vo.category;

public class CategoryVo {

	private String id; //��α� ���̵�
	private int orderNum;  //���� ���� �� ������ ���� ��
	private int type; //ī�װ� Ÿ�� 1.�Ϲݱ� 2.��б�
	private String categoryName; //ī�װ� �̸�
	
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

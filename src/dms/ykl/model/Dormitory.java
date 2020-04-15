package dms.ykl.model;

public class Dormitory {
	private String building;
	private String sushez;
	private String dormitory_type;
	private String dormitory_name; // 宿舍号
	private String tel;

	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}

	public String getSushez() {
		return sushez;
	}

	public void setSushez(String sushez) {
		this.sushez = sushez;
	}

	public String getDormitory_type() {
		return dormitory_type;
	}

	public void setDormitory_type(String dormitory_type) {
		this.dormitory_type = dormitory_type;
	}

	public String getDormitory_name() {
		return dormitory_name;
	}

	public void setDormitory_name(String dormitory_name) {
		this.dormitory_name = dormitory_name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
}

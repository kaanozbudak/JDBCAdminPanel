package data;

public class ColumnData {
	private String field, type, key, defaultVal;
	private boolean ifNull;
	public ColumnData(String field, String type, boolean ifNull, String key, String defaultVal){
		this.field = field;
		this.type = type;
		this.key = key;
		this.ifNull = ifNull;
	}
	public String getName() {
		return field;
	}
	public void setName(String name) {
		this.field = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public boolean isIfNull() {
		return ifNull;
	}
	public void setIfNull(boolean ifNull) {
		this.ifNull = ifNull;
	}
	public String defaultVal() {
		return this.defaultVal;
	}
	public void defaultVal(String defaultVal) {
		this.defaultVal = defaultVal;
	}
}

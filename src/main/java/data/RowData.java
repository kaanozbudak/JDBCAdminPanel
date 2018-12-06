package data;

public class RowData {
	private String col [];
	public RowData(int n){
		col = new String[n];
	}
	public String [] getCol() {
		return this.col;
	}
	public void setCol(String st, int index) {
		col[index] = st;
	}
}

package handler;

public class Table {
    private String colName;
    private boolean pk;
    private String type;

    public Table(String colName, boolean pk, String type){
        this.colName = colName;
        this.pk = pk;
        this.type = type;
    }

    public String getColName() {
        return colName;
    }

    public void setColName(String colName) {
        this.colName = colName;
    }

    public boolean isPk() {
        return pk;
    }

    public void setPk(boolean pk) {
        this.pk = pk;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}

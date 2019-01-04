package handler;

public class Values {
    private String colName;
    private String type;
    private String pk;

    public Values(){}

    public Values(String colName, String type, String pk){
        this.colName = colName;
        this.type = type;
        this.pk = pk;
    }

    public String getColName() {
        return colName;
    }

    public void setColName(String colName) {
        this.colName = colName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPk() {
        return pk;
    }

    public void setPk(String pk) {
        this.pk = pk;
    }
}

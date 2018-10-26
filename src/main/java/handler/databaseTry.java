package handler;

public class databaseTry
{
    public static void main(String[] args) {
        Database database = new Database();
        User user = new User("kaan","ozbudak","kaanozbudak","kaanozbudak@hotmail.com","rosekaan1");
        database.registerUser(user);
    }
}

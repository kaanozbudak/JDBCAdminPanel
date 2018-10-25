package handler;

import java.sql.*;

public class Database
{
    private Connection connection;
    private Statement statement;
    private ResultSet resultSet;

    public void startConnection()
    {
        String javaDriver = "com.mysql.jdbc.Driver";
        String jdbcURL= "jdbc:mysql://localhost:3306/user_db";
        String root = "root";
        String myPassword="";
        try
        {
            Class.forName(javaDriver);
            connection = DriverManager.getConnection(jdbcURL,root,myPassword);
        }
        catch( Exception e )
        {
            System.out.println("connection failed: " + e.getLocalizedMessage());
        }
    }
    public boolean loginCheck(User user)
    {
        try
        {
            startConnection();
            String loginCheckSql = String.format("Select * from user_table where email='%s' and password='%s';",user.getEmail(),user.getPassword());
            statement = connection.createStatement();
            resultSet = statement.executeQuery(loginCheckSql);
            return resultSet.next();
            // if there is a user which has e mail and password paired return true
            // if there is not user like that return false
            // resultSet.next returned boolean
        }
        catch( Exception e )
        {
            System.out.println("check user failed: "+e.getLocalizedMessage());

        }
        finally
        {
            close();
        }
        return false;
    }
    private boolean registerCheck(String email, String userName)
    {
        try
        {
            startConnection();
            String registerCheckSql =String.format("select * from user_table where email='%s' or username='%s';",email,userName);
            statement = connection.createStatement();
            resultSet = statement.executeQuery(registerCheckSql);
            return resultSet.next();
            // if there is a user which has this email or username it return true
            // if there is not user like that return false
        }
        catch (Exception e)
        {
            System.out.println("register check failed: "+e.getLocalizedMessage());
        }
        return false;

    }
    public void registerUser(User user)
    {
        if (registerCheck(user.getEmail(),user.getUserName()))
        {
            System.out.println("This user already registered");
        }
        else
        {
            try
            {
                String registerUserSql = String.format("INSERT INTO user_table values (default,'%s','%s','%s','%s','%s');"
                        ,user.getUserName()
                        ,user.getFirstName()
                        ,user.getLastName()
                        ,user.getEmail()
                        ,user.getPassword());
                statement = connection.createStatement();
                statement.executeUpdate(registerUserSql);
            }
            catch (SQLException e)
            {
                System.out.println("register user failed : " + e.getLocalizedMessage());
            }
            finally
            {
                close();
            }
        }
    }
    private void close()
    {
        try
        {
            if(resultSet!=null) resultSet.close();
            if(statement!=null) statement.close();
            if(connection!=null) connection.close();
        }
        catch(Exception e)
        {
            System.out.println("Close failed: "+e.getLocalizedMessage());
        }
    }

}
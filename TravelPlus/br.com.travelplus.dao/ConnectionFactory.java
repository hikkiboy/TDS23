import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    public Connection getConnection(){
        Connection connection = null;
        try {
        	//conexão com o sql 😁😁
        	Class.forName("org.sqlserver.Driver");
            connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Cliente;user=sa;password=TecInfo;" +  "encrypt=true;trustServerCertificate=true");
            
        }catch(Exception e){
           e.printStackTrace();
           System.err.println("SQLException: " + e.getMessage());
        }
        return connection;
        
    }
    

}
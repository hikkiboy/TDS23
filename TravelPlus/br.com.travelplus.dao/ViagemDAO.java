import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ViagemDAO extends ConnectionFactory {
	   private static final String SELECT_VIAGEM_BY_ID = "select id,lugar,preco from viagem where id = ?";
	   private static final String SELECT_ALL_VIAGENS = "select * from viagem";

	   public ViagemDAO() {
	   }

	  
	   public Viagem selectViagem(int id) {
	       Viagem viagem = null;
	       // Step 1: Establishing a Connection
	       try (
	               Connection connection = getConnection();
	               // Step 2:Create a statement using connection object
	               PreparedStatement preparedStatement = connection.prepareStatement(SELECT_VIAGEM_BY_ID);) {
	           preparedStatement.setInt(1, id);
	           System.out.println(preparedStatement);
	           // Step 3: Execute the query or update query
	           ResultSet rs = preparedStatement.executeQuery();

	           // Step 4: Process the ResultSet object.
	           while (rs.next()) {
	               String lugar = rs.getString("nome");
	               Double preco = Double.parseDouble(rs.getString("preco"));
	               viagem = new Viagem(id, lugar, preco);
	           }
	       } catch (SQLException e) {
	           printSQLException(e);
	       }
	       return viagem;
	   }

	   public List<Viagem> SelectAllViagens() {

	       // using try-with-resources to avoid closing resources (boiler plate code)
	       List<Viagem> Viagens = new ArrayList<>();
	       // Step 1: Establishing a Connection
	       try (Connection connection = getConnection();

	               // Step 2:Create a statement using connection object
	           PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_VIAGENS);) {
	           System.out.println(preparedStatement);
	           // Step 3: Execute the query or update query
	           ResultSet rs = preparedStatement.executeQuery();

	           // Step 4: Process the ResultSet object.
	           while (rs.next()) {
	               int id = rs.getInt("id");
	               String lugar = rs.getString("nome");
	               double preco = Double.parseDouble(rs.getString("preco"));
	               Viagens.add(new Viagem(id,lugar,preco));
	           }
	       } catch (SQLException e) {
	           printSQLException(e);
	       }
	       return Viagens;
	   }


	   private void printSQLException(SQLException ex) {
	       for (Throwable e : ex) {
	           if (e instanceof SQLException) {
	               e.printStackTrace(System.err);
	               System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	               System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	               System.err.println("Message: " + e.getMessage());
	               Throwable t = ex.getCause();
	               while (t != null) {
	                   System.out.println("Cause: " + t);
	                   t = t.getCause();
	               }
	           }
	       }
	   }

	}
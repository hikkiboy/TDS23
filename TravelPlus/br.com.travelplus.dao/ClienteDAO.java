import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO extends ConnectionFactory {
	   private static final String INSERT_CLIENTE_SQL = "insert into Cliente values('?','?','?','?','?','?')";
	   private static final String SELECT_CLIENTES_BY_ID = "select id,nome,email,lugar,data_via,preco from viagem where id = ?";
	   private static final String SELECT_ALL_CLIENTES = "select * from cliente";
	   private static final String DELETE_CLIENTE_SQL = "delete from cliente where id = ?;";
	   private static final String UPDATE_CLIENTES_SQL = "update cliente set nome = ?, tipo = ?,marca = ?, dataval = ?, preco = ?,img = ? where id = ?";

	   public ClienteDAO() {
	   }

	   public void insertCliente(Cliente cliente) throws SQLException {
	       System.out.println(INSERT_CLIENTE_SQL);
	       // try-with-resource statement will auto close the connection.
	       try (
	               Connection connection = getConnection();
	               PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CLIENTE_SQL)) {
	           preparedStatement.setString(1, cliente.getNome());
	           preparedStatement.setString(2, cliente.getEmail());
	           preparedStatement.setString(3, cliente.getLugar());
	           preparedStatement.setString(4, cliente.getData_Via());	           
	           System.out.println(preparedStatement);
	           preparedStatement.executeUpdate();
	       } catch (SQLException e) {
	           printSQLException(e);
	       }
	   }

	   public Cliente selectCliente(int id) {
	       Cliente cliente = null;
	       // Step 1: Establishing a Connection
	       try (
	               Connection connection = getConnection();
	               // Step 2:Create a statement using connection object
	               PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CLIENTES_BY_ID);) {
	           preparedStatement.setInt(1, id);
	           System.out.println(preparedStatement);
	           // Step 3: Execute the query or update query
	           ResultSet rs = preparedStatement.executeQuery();

	           // Step 4: Process the ResultSet object.
	           while (rs.next()) {
	               String nome = rs.getString("nome");
	               String email = rs.getString("email");
	               String lugar = rs.getString("lugar");
	               String data_via = rs.getString("data_via");
	               Double preco = rs.getDouble("preco");
	               cliente = new Cliente(id, nome, email, lugar, data_via, preco);
	           }
	       } catch (SQLException e) {
	           printSQLException(e);
	       }
	       return cliente;
	   }

	   public List<Cliente> SelectAllClientes() {

	       // using try-with-resources to avoid closing resources (boiler plate code)
	       List<Cliente> clientes = new ArrayList<>();
	       // Step 1: Establishing a Connection
	       try (Connection connection = getConnection();

	               // Step 2:Create a statement using connection object
	           PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CLIENTES);) {
	           System.out.println(preparedStatement);
	           // Step 3: Execute the query or update query
	           ResultSet rs = preparedStatement.executeQuery();

	           // Step 4: Process the ResultSet object.
	           while (rs.next()) {
	               int id = rs.getInt("id");
	               String nome = rs.getString("nome");
	               String email = rs.getString("email");
	               String lugar = rs.getString("lugar");
	               String data_via = rs.getString("data_via");
	               Double preco = rs.getDouble("preco");
	               clientes.add(new Cliente(id, nome,email,lugar,data_via,preco));
	           }
	       } catch (SQLException e) {
	           printSQLException(e);
	       }
	       return clientes;
	   }

	   public boolean deleteCliente(int id) throws SQLException {
	       boolean rowDeleted;
	       try (Connection connection = getConnection();
	               PreparedStatement statement = connection.prepareStatement(DELETE_CLIENTE_SQL);) {
	           statement.setInt(1, id);
	           rowDeleted = statement.executeUpdate() > 0;
	       }
	       return rowDeleted;
	   }

	   public boolean updateCliente(Cliente cliente) throws SQLException {
	       boolean rowUpdated;
	       try (Connection connection = getConnection();
	               PreparedStatement statement = connection.prepareStatement(UPDATE_CLIENTES_SQL);) {
	    	   statement.setString(1, cliente.getNome());
	    	   statement.setString(2, cliente.getEmail());
	           statement.setString(3, cliente.getData_Via());
	           statement.setString(4, cliente.getLugar());
	           statement.setInt(5, cliente.getId());

	           rowUpdated = statement.executeUpdate() > 0;
	       }
	       return rowUpdated;
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
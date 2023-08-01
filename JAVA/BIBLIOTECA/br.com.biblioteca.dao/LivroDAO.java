import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LivroDAO {
	private Connection con;
	public LivroDAO() {
		ConnectionFactory cf = new ConnectionFactory();
		con = cf.getConnection();
	}
	public void inserirLivro(Livro livro) {
		String scriptSql = "INSERT INTO LIVRO(titulo,autor,numeroPaginas,editora)"+ "VALUES(?,?,?,?)";
		
		try {
			PreparedStatement stmt = con.prepareStatement(scriptSql);
			stmt.setString(1, livro.getTitulo());
			stmt.setString(2, livro.getAutor());
			stmt.setInt(3, livro.getNumeroPaginas());
			stmt.setString(4, livro.getEditora());
			stmt.setInt(5, livro.getCodigo());
			stmt.execute();
			stmt.close();
			System.out.println("Inserido com sucesso");
		}catch(SQLException e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	public void deletarLivro(Livro livro) {
		String scriptSql = "DELETE FROM LIVRO WHERE codLivro = ? ";
		try {
			PreparedStatement stmt = con.prepareStatement(scriptSql);
			stmt.setInt(1, livro.getCodigo());
			
			stmt.execute();
			stmt.close();
			
			System.out.println("Excluido com sucesso");
		}catch(SQLException e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	public void atualizarLivro(Livro livro) {
		String scriptSql = "UPDATE LIVRO SET titulo = ?, autor = ?" + ", numeroPaginas = ?, editora = ? WHERE codLivro = ?";
		
		try {
			PreparedStatement stmt = con.prepareStatement(scriptSql);
			stmt.setString(1, livro.getTitulo());
			stmt.setString(2, livro.getAutor());
			stmt.setInt(3, livro.getNumeroPaginas());
			stmt.setString(4, livro.getEditora());
			stmt.setInt(5, livro.getCodigo());
			stmt.execute();
			stmt.close();
			System.out.println("Atualizado com sucesso");
		}catch(SQLException e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	
	public List<Livro> listarLivros()
	{
		List <Livro> listaLIVROs = new ArrayList<Livro>();
		
		String scriptSql = "SELECT * FROM LIVRO";
		
		try {
			PreparedStatement stmt = con.prepareStatement(scriptSql);
			ResultSet resultSet = stmt.executeQuery();
			
			while(resultSet.next()) {
				Livro livro = new Livro();
				livro.setCodigo(resultSet.getInt("codLivro"));
				livro.setTitulo(resultSet.getString("titutlo"));
				livro.setAutor(resultSet.getString("autor"));
				livro.setNumeroPaginas(resultSet.getInt("numeroPaginas"));
				livro.setEditora(resultSet.getString("editora"));
				listaLIVROs.add(livro);
				}
			resultSet.close();
			stmt.close();
		}
		catch(SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return listaLIVROs;
	}
	
}


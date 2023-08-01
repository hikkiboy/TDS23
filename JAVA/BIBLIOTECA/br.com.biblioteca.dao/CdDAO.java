import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CdDAO {
	private Connection con;
	public CdDAO() {
		ConnectionFactory cf = new ConnectionFactory();
		con = cf.getConnection();
	}
	public void inserirCd(CD cd) {
		String scriptSql = "INSERT INTO CD(titulo,artista,numeroFaixas,gravadora)"+ "VALUES(?,?,?,?)";
		
		try {
			PreparedStatement stmt = con.prepareStatement(scriptSql);
			stmt.setString(1, cd.getTitulo());
			stmt.setString(2, cd.getArtista());
			stmt.setInt(3, cd.getNumeroFaixa());
			stmt.setString(4, cd.getGravadora());
			stmt.setInt(5, cd.getCodigo());
			stmt.execute();
			stmt.close();
			System.out.println("Inserido com sucesso");
		}catch(SQLException e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	public void deletarCd(CD cd) {
		String scriptSql = "DELETE FROM CD WHERE codCD = ? ";
		try {
			PreparedStatement stmt = con.prepareStatement(scriptSql);
			stmt.setInt(1, cd.getCodigo());
			
			stmt.execute();
			stmt.close();
			
			System.out.println("Excluido com sucesso");
		}catch(SQLException e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	public void atualizarCd(CD cd) {
		String scriptSql = "UPDATE CD SET titulo = ?, artista = ?" + ", numeroFaixas = ?, gravadora = ? WHERE codCd = ?";
		
		try {
			PreparedStatement stmt = con.prepareStatement(scriptSql);
			stmt.setString(1, cd.getTitulo());
			stmt.setString(2, cd.getArtista());
			stmt.setInt(3, cd.getNumeroFaixa());
			stmt.setString(4, cd.getGravadora());
			stmt.setInt(5, cd.getCodigo());
			stmt.execute();
			stmt.close();
			System.out.println("Atualizado com sucesso");
		}catch(SQLException e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	
	public List<CD> listarCds()
	{
		List <CD> listaCds = new ArrayList<CD>();
		
		String scriptSql = "SELECT * FROM CD";
		
		try {
			PreparedStatement stmt = con.prepareStatement(scriptSql);
			ResultSet resultSet = stmt.executeQuery();
			
			while(resultSet.next()) {
				CD cd = new CD();
				cd.setCodigo(resultSet.getInt("codCD"));
				cd.setTitulo(resultSet.getString("titutlo"));
				cd.setArtista(resultSet.getString("artista"));
				cd.setNumeroFaixa(resultSet.getInt("numeroFaixa"));
				cd.setGravadora(resultSet.getString("gravadora"));
				listaCds.add(cd);
				}
			resultSet.close();
			stmt.close();
		}
		catch(SQLException e) {
			System.out.println("Erro:" + e.getMessage());
		}
		return listaCds;
	}
	
}


import java.sql.Connection;
import java.sql.PreparedStatement;

public class AlunoDao extends ConDao {
	public void alterar(Aluno aluno){
		Connection conexao = getConnection();
		PreparedStatement pstmt = conexao.prepareStatement("UPDATE tbAluno SET nome=?, telefone = ?, email = ?,datacadastro = ?" + "WHERE matricula=?" );
		
	}
}

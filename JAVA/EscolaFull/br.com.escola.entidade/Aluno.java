import java.util.Date;

public class Aluno {
	private static final long serialVersionUID = -3095136740L;
	
	private Long matricula;
	private String nome;
	private String telefone;
	private String email;
	private Date dataCadastro;
	
	public Aluno() {
		
	}
	public Aluno(Long matricula, String nome, String telefone, String email, Date dataCadastro) {
		super();
		this.matricula = matricula;
		this.nome = nome;
		this.telefone = telefone;
		this.email = email;
		this.dataCadastro = dataCadastro;
	}
	public Long getMatricula() {
		return matricula;
	}
	public void setMatricula(Long matricula) {
		this.matricula = matricula;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	@Override
	public String toString() {
		return "Aluno [matricula=" + matricula + ", nome=" + nome + ", telefone=" + telefone + ", email=" + email
				+ ", dataCadastro=" + dataCadastro + "]";
	}
	
	
}

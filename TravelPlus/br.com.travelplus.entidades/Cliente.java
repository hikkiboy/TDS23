public class Cliente {
    protected int id;
    protected String Nome;
    protected String Email;
    protected String Lugar;
    protected String Data_Via;
    protected Double Preco;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String nome) {
		Nome = nome;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getLugar() {
		return Lugar;
	}
	public void setLugar(String lugar) {
		Lugar = lugar;
	}
	public String getData_Via() {
		return Data_Via;
	}
	public void setData_Via(String data_Via) {
		Data_Via = data_Via;
	}
	public Double getPreco() {
		return Preco;
	}
	public void setPreco(Double preco) {
		Preco = preco;
	}
	public Cliente(int id, String nome, String email, String lugar, String data_Via, Double preco) {
		super();
		this.id = id;
		Nome = nome;
		Email = email;
		Lugar = lugar;
		Data_Via = data_Via;
		Preco = preco;
	}
	public Cliente(String nome, String email, String lugar, String data_Via, Double preco) {
		super();
		Nome = nome;
		Email = email;
		Lugar = lugar;
		Data_Via = data_Via;
		Preco = preco;
	}
	public Cliente() {
		super();
	}
	public Cliente(String nome, String email) {
		super();
		Nome = nome;
		Email = email;
	}
	public Cliente(String nome, String email, String lugar, String data_Via) {
		super();
		Nome = nome;
		Email = email;
		Lugar = lugar;
		Data_Via = data_Via;
	}
	
	
}
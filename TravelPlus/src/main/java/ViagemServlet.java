

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/ClienteServlet")
public class ViagemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ViagemDAO viagemdao;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViagemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		viagemdao= new V();
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//Int Id = request.getParameter("id");
		String Lugar = request.getParameter("lugar");
		String preco = request.getParameter("preco");
		Viagem newViagem = new Viagem (lugar, Email);
		try {
			clientedao.insertCliente(newCliente);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("list");
		//String action = request.getServletPath();		
		/*try {
			switch(action) {
			case "/new":
				showNewForm(request,response);
				break;
			case "/insert":
				insertUser(request, response);
				break;
			case "/delete":
				deleteUser(request, response);
				break;
			/*case "/edit":
				showEditForm(request,response);
				break;
			case "/update":
				//updateUser(request,response);
				//break;
			//default:
				/*listUser(request, response);*/
				//break;
			//}
		//}catch(SQLException e) {
			//throw new ServletException(e);
		//}*/
	}
		
		private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException{
			List <Viagem> listViagem = viagemdao.SelectAllViagens();
			request.setAttribute("listViagem", listViagem);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
		}
		/*
		private void showNewForm(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException{
			RequestDispatcher dispatcher = request.getRequestDispatcher("cliente-form.jsp");
			dispatcher.forward(request, response);
			}
		
		/*private void showEditForm(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException{
			int id = Integer.parseInt(request.getParameter("id"));
			Usuario existingUser = usuariodao.selectUser(id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
			request.setAttribute("user", existingUser);
			dispatcher.forward(request, response);
			}*/
	
		private void updateUser(HttpServletRequest request, HttpServletResponse response)
				throws IOException,SQLException{
			Integer id = Integer.parseInt(request.getParameter("Id"));
			String Nome = request.getParameter("Nome");
			String Email = request.getParameter("Email");
			String Data_Via = request.getParameter("Data");
			String Lugar = request.getParameter("Lugar");
			Cliente newCliente = new Cliente (Nome,Email,Data_Via,Lugar);
			clientedao.updateCliente(newCliente);
			response.sendRedirect("list");
					
			
		}




	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
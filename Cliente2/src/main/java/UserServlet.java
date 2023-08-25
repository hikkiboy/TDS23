

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

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
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UsuarioDao1 usuariodao;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		usuariodao = new UsuarioDao1();
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
		String action = request.getServletPath();		
		try {
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
			case "/edit":
				showEditForm(request,response);
				break;
			case "/update":
				updateUser(request,response);
				break;
			default:
				listUser(request, response);
				break;
			}
		}catch(SQLException e) {
			throw new ServletException(e);
		}
	}
		
		private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException{
			List <Usuario> listUser = usuariodao.selectAllUsers();
			request.setAttribute("listUser", listUser);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
		}
		private void showNewForm(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException{
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
			dispatcher.forward(request, response);
			}
		private void showEditForm(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException{
			int id = Integer.parseInt(request.getParameter("id"));
			Usuario existingUser = usuariodao.selectUser(id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
			request.setAttribute("user", existingUser);
			dispatcher.forward(request, response);
			}
		
		private void insertUser(HttpServletRequest request, HttpServletResponse response)
				throws IOException,SQLException{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String pais = request.getParameter("pais");
			Usuario newUser = new Usuario (name, email, pais);
			usuariodao.insertUser(newUser);
			response.sendRedirect("list");
		}
		private void deleteUser (HttpServletRequest request, HttpServletResponse response)
				throws IOException,SQLException{
			int id = Integer.parseInt(request.getParameter("id"));
			usuariodao.deleteUser(id);
			response.sendRedirect("list");
			
		}
		private void updateUser(HttpServletRequest request, HttpServletResponse response)
				throws IOException,SQLException{
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String pais = request.getParameter("pais");
			
			Usuario book = new Usuario(id, name, email, pais);
			usuariodao.updateUser(book);
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

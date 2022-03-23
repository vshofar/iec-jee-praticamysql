package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.CategoriaService;
import model.Categoria;


/**
 * Servlet implementation class InserirProduto
 */
@WebServlet(urlPatterns = "/inserir-produto")
public class InserirProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private CategoriaService service;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			  throws ServletException, IOException {		
		try {

			List<Categoria> listaCategoria = service.listar();
			request.setAttribute("listaCategoria", listaCategoria);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/produto/inserir.jsp");
			dispatcher.forward(request, response);			

		} catch (Exception ex) {
			ex.printStackTrace();
			PrintWriter out = response.getWriter();
			out.print("<html>");
			out.print("<h2> Nao foi possivel inserir a categoria!</h2>");
			out.print("<br");
			out.print("<a href = 'index.jsp'> Voltar </a>");
			out.print("</html>");
		}			
	}
	
}

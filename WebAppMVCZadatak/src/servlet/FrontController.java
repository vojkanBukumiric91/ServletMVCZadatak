package servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ApplicationController;
import view.ViewResolver;



/**
 * Servlet implementation class FrontController
 */
@WebServlet("/application/*")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ApplicationController applicationController;
	private ViewResolver viewResolver;   
    
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get");
		System.out.println("===========================FrontController================================");
		processRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post");
		System.out.println("===========================FrontCOntroler==================================");
		processRequest(request,response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = applicationController.processRequest(request.getPathInfo(), request);
		String page= viewResolver.getPage(view);
		
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}
	
	@Override
	public void init() throws ServletException {
		super.init();
		applicationController = new ApplicationController();
		System.out.println("Application Controller created");
		
		viewResolver = new ViewResolver();
		System.out.println("View resolver created...");
	}

}

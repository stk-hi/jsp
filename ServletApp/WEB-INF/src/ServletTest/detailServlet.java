package ServletTest;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class detailServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		    throws IOException, ServletException{
	 response.setContentType("text/html");
	 //PrintWriter out = response.getWriter();

	 //out.println("<html><head></head><body>");
	 //out.println("<p>Sample</p>");
	 //out.println("<p>Hello World!!!</p>");
	 //out.println("</body></html>");

	 String view = "/WEB-INF/jsp/detail.jsp";
	 RequestDispatcher dispatcher = request.getRequestDispatcher(view);
	 dispatcher.forward(request, response);

	}
}
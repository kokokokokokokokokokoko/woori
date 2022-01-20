package servlettest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Test() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter pw = response.getWriter();
		pw.println("<h1>Test Servlet</h1>");
		pw.println("<input type='text'>");
		pw.println();
		pw.println("<form action='./Test' method='post'>");
		pw.println("<input type='text' name='page'>");//  ./Test?page=11
		pw.println("<button type='submit'>submit</button>");
		pw.println("</form>");
		pw.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		System.out.println("여기로 왔습니다");
		String page = request.getParameter("page");
		System.out.println("page :  " + page);
//		response.sendRedirect("./main.jsp?page="+page);
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); //post방식
		request.setAttribute("page", page);
		rd.forward(request, response);
	}

}

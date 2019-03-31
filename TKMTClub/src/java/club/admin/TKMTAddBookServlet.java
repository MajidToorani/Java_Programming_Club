//    Document   : TKMTDisplayBookServlet
//    Created on : 16-Feb-2019
//    Author     : Taraneh Khaleghi
//    Observer   : Majid Tooranisama

package club.admin;

import club.business.Book;
import club.data.BookIO;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author taran
 */
@WebServlet(name = "TKMTAddBookServlet", urlPatterns = {"/TKMTAddBook"})
public class TKMTAddBookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String url = "/TKMTAddBook.jsp"; 

            
            String code = request.getParameter("code");
            String description = request.getParameter("description");
            String stQuantity = request.getParameter("quantity");

            if (stQuantity.isEmpty() || stQuantity == null){
                stQuantity = "0"; 
            }
           
            Integer quantity = Integer.parseInt(stQuantity);           
            Book book = new Book(code, description, quantity);
            
            //validate the user inputs
             String message = "";
             
             if (code == null || code.isEmpty()) {
                 message+= "Book code is required.<br />";
                 url = "/TKMTAddBook.jsp";               
            }
             if (description.length()<3 || description.isEmpty() || description == null) {
                 message+="Description must have at least 3 characters.<br />";
                 url = "/TKMTAddBook.jsp"; 
            }
             if (quantity <=0) {
                message+="Quantity must be a positive number.<br />";
                url = "/TKMTAddBook.jsp";
            }
              if (message.equals("")) {                
                ServletContext context = getServletContext();
                String path =
                    context.getRealPath("/WEB-INF/books.txt");
                BookIO.insert(book, path);         
                url = "/TKMTDisplayBooks.jsp";
            }       
            
            // save user's enters
            request.setAttribute("book", book);
            request.setAttribute("message", message);
            
            getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);  
    }
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}

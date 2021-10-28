/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.jws.Oneway;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import java.util.List;

/**
 *
 * @author giovanna
 */
@WebService(serviceName = "WebServiceBiblio")
@Stateless()
public class WebServiceBiblio {

    @EJB
    private BookManagerLocal ejbRef;// Add business logic below. (Right-click in editor and choose
    // "Web Service > Add Operation"

    @WebMethod(operationName = "addBook")
    @Oneway
    public void addBook(@WebParam(name = "title") String title, @WebParam(name = "author") String author) {
        ejbRef.addBook(title, author);
    }

    @WebMethod(operationName = "getBooks")
    public List<Book> getBooks() {
        return ejbRef.getBooks();
    }
    
}

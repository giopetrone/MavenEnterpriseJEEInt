/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import com.mycompany.BookFacadeLocal;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import java.util.List;

/**
 *
 * @author giovanna
 */
@Stateless
public class BookManager implements BookManagerLocal {

    @EJB
    private BookFacadeLocal bookFacade;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public void addBook(String title, String author) {
        Book l = new Book();
        l.setTitle(title);
        l.setAuthor(author);
        bookFacade.create(l);
    }

    @Override
    public List<Book> getBooks() {
        List<Book> listaLibri = bookFacade.findAll();
        
        return listaLibri;
        
    }
}

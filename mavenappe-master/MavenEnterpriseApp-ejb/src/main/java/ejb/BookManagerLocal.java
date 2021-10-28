/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import javax.ejb.Local;
import java.util.List;

/**
 *
 * @author giovanna
 */
@Local
public interface BookManagerLocal {

    void addBook(String title, String author);

    List<Book> getBooks();
    
}

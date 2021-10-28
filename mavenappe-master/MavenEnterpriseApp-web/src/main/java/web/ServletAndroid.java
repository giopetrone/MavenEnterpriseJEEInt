/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;


import com.google.gson.Gson;
import ejb.Book;
import ejb.BookManagerLocal;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 *
 * @author giovanna
 */
public class ServletAndroid extends HttpServlet {

    @EJB
    private BookManagerLocal bookManager;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        try (PrintWriter out = response.getWriter()) {

            String name = request.getParameter("name");
            // da Android Json
            StringBuilder sb = new StringBuilder();
            String s;
            while ((s = request.getReader().readLine()) != null) {
                sb.append(s);
            }
            //FINE

            //     out.println("name " + name);
            System.out.println("name  " + name);
            // out.println("s " + sb.toString());
            System.out.println("s = " + sb.toString());
            List<Book> lista = bookManager.getBooks();
            Book[] arLibro = lista.toArray(new Book[lista.size()]);

            String gsonList = buildGson(lista);
            System.out.println("servlet buildGson: NOT NULL  " + gsonList);
            if (lista != null) {
                //  rd = getServletContext().getRequestDispatcher("/currbiblio.jsp");
                //   request.setAttribute("jsonObject", gsonList);

                //    rd.forward(request, response);
                request.setAttribute("jsonObject", gsonList);
                // manda Json obj verso Android
                PrintWriter outJ = response.getWriter();
                outJ.println(gsonList);
                outJ.close();
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    private String buildGson(List<Book> l) {

        Gson gson = new Gson();
        String json = gson.toJson(l);

        if (json == null) {
            System.out.println("servlet buildGson: NULL");
        } else {
            System.out.println("servlet buildGson: NOT NULL  " + json);
        }
        return json;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

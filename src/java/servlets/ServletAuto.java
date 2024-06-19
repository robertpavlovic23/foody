/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import beans.Auto;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Aisha
 */
public class ServletAuto extends HttpServlet {

    ArrayList<Auto> listAuto = new ArrayList();
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletAuto</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletAuto at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        
        
        
        listAuto.add(new Auto("Skoda", 2000, 1998));
        listAuto.add(new Auto("BMW", 5800, 1995));
        listAuto.add(new Auto("Toyota", 3500, 2004));
        
        String ispis = request.getParameter("ispis");
        
        if(ispis != null && ispis.length() > 0) {
            if(ispis.equals("lista")) {
                request.setAttribute("listaAuta", listAuto);
                request.getRequestDispatcher("listaAuta.jsp").forward(request, response);
            }else if(ispis.equals("jedan")) {
                String br = request.getParameter("br");
                if(br != null && br.length() > 0){
                    request.setAttribute("auto", listAuto.get(Integer.parseInt(br)));
                    request.getRequestDispatcher("auto.jsp").forward(request, response);
                }
            }
        } else {
            request.setAttribute("msg", "Parametri nisu dobrog formata!");
            request.getRequestDispatcher("unos.jpg").forward(request, response);
        }

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
        String marka = request.getParameter("marka");
        String cenaStr = request.getParameter("cena");
        String godisteStr = request.getParameter("godiste");

        if (marka != null && marka.length() > 0
                && cenaStr != null && cenaStr.length() > 0
                && godisteStr != null && godisteStr.length() > 0) {
            try {
                double cena = Double.parseDouble(cenaStr);
                int godiste = Integer.parseInt(godisteStr);

                Auto a = new Auto(marka, cena, godiste);
                listAuto.add(a);

                request.setAttribute("auto", a);
                request.getRequestDispatcher("auto.jsp").forward(request, response);
            } catch (ServletException | IOException | NumberFormatException e) {
                request.setAttribute("msg", "Cena, godiste nisu dobrog formata");
                request.getRequestDispatcher("unos.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("msg", "Morate popuniti sva polja!");
            request.getRequestDispatcher("unos.jsp").forward(request, response);
        }
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

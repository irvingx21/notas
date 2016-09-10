package vista;

import controlador.BeanUpdate;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controlador.BeanUsuario;
import java.sql.Driver;
import java.util.Enumeration;
import modelo.ActualizarUsuario;

import modelo.Usuario;

/**
 * Servlet implementation class ServletConsulta
 */
@WebServlet("/ServletUpdate")
public class ServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ServletUpdate() {
        // TODO Auto-generated constructor stub
    
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String materia = request.getParameter("materia");
		String matricula = request.getParameter("matricula");
                String i=request.getParameter("i");
		String ci=request.getParameter("ci");
		String ii=request.getParameter("ii");
		String cii=request.getParameter("cii");
		String iii=request.getParameter("iii");
		String ciii=request.getParameter("ciii");
		String ochenta=request.getParameter("ochenta");
		String examen=request.getParameter("examen");
		String veinte=request.getParameter("veinte");
		String q1=request.getParameter("q1");
		String c=request.getParameter("c");
		if(!i.equalsIgnoreCase("") && !ci.equalsIgnoreCase("") && !ii.equalsIgnoreCase("") && !cii.equalsIgnoreCase("") && !iii.equalsIgnoreCase("")&& !ciii.equalsIgnoreCase("") && !ochenta.equalsIgnoreCase("") && !examen.equalsIgnoreCase("") && !veinte.equalsIgnoreCase("") && !q1.equalsIgnoreCase("") && !c.equalsIgnoreCase("")  ){
			BeanUpdate busuario=new BeanUpdate(materia, matricula, i, ci, ii, cii, iii, ciii, ochenta, examen, veinte, q1, c);
			boolean sw=ActualizarUsuario.Actualizarusuario(busuario);
			if(sw){
				request.getRequestDispatcher("Modificacion.jsp").forward(request, response);
			}else{
                            request.getRequestDispatcher("error.jsp").forward(request, response);
                        }
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
        
        

}

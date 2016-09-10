package vista;

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

import modelo.Usuario;

import controlador.BeanUsuario;

/**
 * Servlet implementation class ServletRegistro
 */
@WebServlet("/ServletRegistro")
public class ServletRegistro extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ServletRegistro() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String materia=request.getParameter("materia");
		String matricula=request.getParameter("matricula");
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
		if(!materia.equalsIgnoreCase("") && !matricula.equalsIgnoreCase("") && !i.equalsIgnoreCase("") && !ci.equalsIgnoreCase("") && !ii.equalsIgnoreCase("") && !cii.equalsIgnoreCase("") && !iii.equalsIgnoreCase("")&& !ciii.equalsIgnoreCase("") && !ochenta.equalsIgnoreCase("") && !examen.equalsIgnoreCase("") && !veinte.equalsIgnoreCase("") && !q1.equalsIgnoreCase("") && !c.equalsIgnoreCase("")  ){
			BeanUsuario busuario=new BeanUsuario(materia, matricula, i, ci, ii, cii, iii, ciii, ochenta, examen, veinte, q1, c);
			boolean sw=Usuario.agregarUsuario(busuario);
			if(sw){
				request.getRequestDispatcher("Mensaje.jsp").forward(request, response);
			}else{
                            request.getRequestDispatcher("error.jsp").forward(request, response);
                        }
		}
	}

//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String nombre=request.getParameter("nombre");
//		String apellido=request.getParameter("apellido");
//		String edad=request.getParameter("edad");
//		String correo=request.getParameter("correo");
//		String usuario=request.getParameter("usuario");
//		String clave=request.getParameter("clave");
//		if(!nombre.equalsIgnoreCase("") && !apellido.equalsIgnoreCase("") && !edad.equalsIgnoreCase("") && !correo.equalsIgnoreCase("") && !usuario.equalsIgnoreCase("") && !clave.equalsIgnoreCase("")){
//			BeanUsuario busuario=new BeanUsuario(nombre, apellido, edad, correo, usuario, clave);
//			boolean sw=Usuario.agregarUsuario(busuario);
//			if(sw){
//				request.getRequestDispatcher("Mensaje.jsp").forward(request, response);
//			}else{
//				PrintWriter out=response.getWriter();
//				out.println("Si estas viendo este mensaje es por que algo salio mal, no se pudo completar tu solicitud.");
//			}
//		}
//	}

}

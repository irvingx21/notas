package modelo;

import controlador.BeanUpdate;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import controlador.BeanUsuario;
import static java.lang.System.out;


public class ActualizarUsuario {
 
 public static boolean Actualizarusuario(BeanUpdate update){
  boolean agregado=false;
		try {
			Conexion c=new Conexion();
			Connection con=c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
                                //st.executeUpdate("INSERT INTO Usuarios VALUES ('"+usuario.getNombre()+"','"+usuario.getApellido()+"',"+usuario.getEdad()+",'"+usuario.getCorreo()+"','"+usuario.getUsuario()+"','"+usuario.getClave()+"')");
				//st.executeUpdate("insert into quimestre1 (id_materia, matricula_estudiante,i,ci,ii,cii,iii,ciii,ochenta,examen,veinte,q1,c) values (1,1,10,'DAR',10,'DAR',10,'DAR',8,10,2,10,'DAR')");
				st.executeUpdate("Update quimestre1 Set i = '"+update.getI()+"', ci = '"+update.getCi()+"', ii = '"+update.getIi()+"', cii = '"+update.getCii()+"', iii = '"+update.getIii()+"', ciii = '"+update.getCiii()+"', ochenta = '"+update.getOchenta()+"', examen = '"+update.getExamen()+"', veinte = '"+update.getVeinte()+"', q1 = '"+update.getQ1()+"', c = '"+update.getC()+"' Where id_materia = "+update.getMateria()+" and matricula_estudiante = "+update.getMatricula()+" ");
				agregado=true;
				st.close();}
			c.cerrarConexion();
		} catch (SQLException e) {
			agregado=false;
			e.printStackTrace();
		}
		return agregado;
}

}
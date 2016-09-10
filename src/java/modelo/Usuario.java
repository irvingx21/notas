package modelo;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import controlador.BeanUsuario;

public class Usuario {
	
	public static boolean agregarUsuario(BeanUsuario usuario){
		boolean agregado=false;
		try {
			Conexion c=new Conexion();
			Connection con=c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
                                //st.executeUpdate("INSERT INTO Usuarios VALUES ('"+usuario.getNombre()+"','"+usuario.getApellido()+"',"+usuario.getEdad()+",'"+usuario.getCorreo()+"','"+usuario.getUsuario()+"','"+usuario.getClave()+"')");
				//st.executeUpdate("insert into quimestre1 (id_materia, matricula_estudiante,i,ci,ii,cii,iii,ciii,ochenta,examen,veinte,q1,c) values (1,1,10,'DAR',10,'DAR',10,'DAR',8,10,2,10,'DAR')");
				st.executeUpdate("insert into quimestre1 (id_materia, matricula_estudiante,i,ci,ii,cii,iii,ciii,ochenta,examen,veinte,q1,c) values ( '"+usuario.getMateria()+"','"+usuario.getMatricula()+"',"+usuario.getI()+",'"+usuario.getCi()+"','"+usuario.getIi()+"','"+usuario.getCii()+"','"+usuario.getIii()+"','"+usuario.getCiii()+"','"+usuario.getOchenta()+"','"+usuario.getExamen()+"','"+usuario.getVeinte()+"','"+usuario.getQ1()+"','"+usuario.getC()+"' )");
				System.out.println("insert into quimestre1 (id_materia, matricula_estudiante,i,ci,ii,cii,iii,ciii,ochenta,examen,veinte,q1,c) values ( '"+usuario.getMateria()+"','"+usuario.getMatricula()+"',"+usuario.getI()+",'"+usuario.getCi()+"','"+usuario.getIi()+"','"+usuario.getCii()+"','"+usuario.getIii()+"','"+usuario.getCiii()+"','"+usuario.getOchenta()+"','"+usuario.getExamen()+"','"+usuario.getVeinte()+"','"+usuario.getQ1()+"','"+usuario.getC()+"' )");
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

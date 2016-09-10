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
import controlador.BeanUsuario1;

public class Usuario1 {
	
	public static boolean agregarUsuario1(BeanUsuario1 usuario1){
		boolean agregado=false;
		try {
			Conexion c=new Conexion();
			Connection con=c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
				//st.executeUpdate("INSERT INTO Usuarios VALUES ('"+usuario.getNombre()+"','"+usuario.getApellido()+"',"+usuario.getEdad()+",'"+usuario.getCorreo()+"','"+usuario.getUsuario()+"','"+usuario.getClave()+"')");
				//st.executeUpdate("insert into quimestre1 (id_materia, matricula_estudiante,i,ci,ii,cii,iii,ciii,ochenta,examen,veinte,q1,c) values (1,1,10,'DAR',10,'DAR',10,'DAR',8,10,2,10,'DAR')");
				st.executeUpdate("insert into quimestre2 (id_materia, matricula_estudiante,i,ci,ii,cii,iii,ciii,ochenta,examen,veinte,q2,c) values ('"+usuario1.getMateria()+"','"+usuario1.getMatricula()+"',"+usuario1.getI()+",'"+usuario1.getCi()+"','"+usuario1.getIi()+"','"+usuario1.getCii()+"','"+usuario1.getIii()+"','"+usuario1.getCiii()+"','"+usuario1.getOchenta()+"','"+usuario1.getExamen()+"','"+usuario1.getVeinte()+"','"+usuario1.getQ2()+"','"+usuario1.getC()+"')");
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

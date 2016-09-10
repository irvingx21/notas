package modelo;

import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {

	private Connection con = null;

	public Conexion() {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
                        String user = "postgres";
                        String password = "1234";
                        String connect = "jdbc:postgresql://localhost:5432/dbperalta";
			con = DriverManager.getConnection(connect, user, password);
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConexion(){
		return con;
	}
	
	public void cerrarConexion(){
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
        
       
}

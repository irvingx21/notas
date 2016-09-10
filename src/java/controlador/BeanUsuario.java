package controlador;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BeanUsuario {
    
        private String materia;
        private String matricula;
        private String i;
        private String ci;
        private String ii;
        private String cii;
        private String iii;
        private String ciii;
        private String ochenta;
        private String examen;
        private String veinte;
        private String q1;
        private String c;
        
//	private String nombre;
//	private String apellido;
//	private String edad;
//	private String correo;
//	private String usuario;
//	private String clave;
//	public String getNombre() {
//		return nombre;
//	}
//	public void setNombre(String nombre) {
//		this.nombre = nombre;
//	}
//	public String getApellido() {
//		return apellido;
//	}
//	public void setApellido(String apellido) {
//		this.apellido = apellido;
//	}
//	public String getEdad() {
//		return edad;
//	}
//	public void setEdad(String edad) {
//		this.edad = edad;
//	}
//	public String getCorreo() {
//		return correo;
//	}
//	public void setCorreo(String correo) {
//		this.correo = correo;
//	}
//	public String getUsuario() {
//		return usuario;
//	}
//	public void setUsuario(String usuario) {
//		this.usuario = usuario;
//	}
//	public String getClave() {
//		return clave;
//	}
//	public void setClave(String clave) {
//		this.clave = clave;
//	}

    public String getMateria() {
        return materia;
    }

    public void setMateria(String materia) {
        this.materia = materia;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getI() {
        return i;
    }

    public void setI(String i) {
        this.i = i;
    }

    public String getCi() {
        return ci;
    }

    public void setCi(String ci) {
        this.ci = ci;
    }

    public String getIi() {
        return ii;
    }

    public void setIi(String ii) {
        this.ii = ii;
    }

    public String getCii() {
        return cii;
    }

    public void setCii(String cii) {
        this.cii = cii;
    }

    public String getIii() {
        return iii;
    }

    public void setIii(String iii) {
        this.iii = iii;
    }

    public String getCiii() {
        return ciii;
    }

    public void setCiii(String ciii) {
        this.ciii = ciii;
    }

    public String getOchenta() {
        return ochenta;
    }

    public void setOchenta(String ochenta) {
        this.ochenta = ochenta;
    }

    public String getExamen() {
        return examen;
    }

    public void setExamen(String examen) {
        this.examen = examen;
    }

    public String getVeinte() {
        return veinte;
    }

    public void setVeinte(String veinte) {
        this.veinte = veinte;
    }

    public String getQ1() {
        return q1;
    }

    public void setQ1(String q1) {
        this.q1 = q1;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }

    	public BeanUsuario(String materia, String matricula, String i,
			String ci, String ii, String cii, String iii, 
                        String ciii, String ochenta, String examen,
                        String veinte, String q1, String c) {
		super();
		this.materia = materia;
		this.matricula = matricula;
		this.i = i;
		this.ci = ci;
		this.ii = ii;
		this.cii = cii;
		this.iii = iii;
		this.ciii = ciii;
		this.ochenta = ochenta;
		this.examen = examen;
		this.veinte = veinte;
		this.q1 = q1;
		this.c = c;
                
	}

}

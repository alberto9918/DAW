package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import modelo.Producto;
import modelo.Usuario;

public class ProductoDAO implements DAO<Producto> {
	//ATRIBUTOS
	private static final String SQL_INSERT = "INSERT INTO PRODUCTOS (codprod,seccion,nombreprod,precio,fecha,importado,paisorigen)"
			+ " VALUES (?, ?, ?, ?, ?, ?,?)";
	private static final String SQL_DELETE = "DELETE FROM PRODUCTOS WHERE codprod= ?";
	private static final String SQL_UPDATE = "UPDATE PRODUCTOS SET seccion = ?,"
			+ "nombreprod = ?, precio = ?, fecha= ? ,importado= ?, paisorigen= ? WHERE codprod = ?";
	private static final String SQL_READ = "SELECT * FROM PRODUCTOS WHERE codprod = ?";
	private static final String SQL_READALL = "SELECT * FROM PRODUCTOS";

	

	private DataSource origenDatos;

	

	public ProductoDAO(DataSource origenDatos) {
		
		this.origenDatos = origenDatos;
	}

	//MÉTODOS
	@Override
	public boolean create(Producto c) throws SQLException {
		PreparedStatement ps=null;
		ResultSet rs=null;
		Connection con=null;
		// con es mi conexion
		
			try {
				con=origenDatos.getConnection();
				ps = con.prepareStatement(SQL_INSERT);
				
				ps.setString(1, c.getCodProd());
				ps.setString(2, c.getSeccion());
				ps.setString(3, c.getNombreProd());
				ps.setDouble(4, c.getPrecio());
				ps.setDate(5, Date.valueOf(c.getFecha()));
				ps.setBoolean(6, c.getImportado());
				ps.setString(7, c.getPais());
				
				if (ps.executeUpdate() > 0){
					
					return true;
				}
					
			}  finally{
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
				
			return false;
	}

	@Override
	public boolean delete(Object key) {
		PreparedStatement ps = null;
		Connection con = null;
		try {
			con = origenDatos.getConnection();
			ps = con.prepareStatement(SQL_DELETE);
			ps.setString(1, key.toString());
			if (ps.executeUpdate() > 0)
				return true;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public boolean update(Producto p) {
		PreparedStatement ps = null;
		Connection con = null;

		try {
			con = origenDatos.getConnection();
			ps = con.prepareStatement(SQL_UPDATE);
			
			ps.setString(1, p.getSeccion());
			ps.setString(2, p.getNombreProd());
			ps.setDouble(3, p.getPrecio());
			ps.setDate(4,  Date.valueOf(p.getFecha()));
			ps.setBoolean(5, p.getImportado());
			ps.setString(6, p.getPais());
			ps.setString(7, p.getCodProd());

			if (ps.executeUpdate() > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public Producto read(Object key) {
		PreparedStatement ps;
		ResultSet rs;
		Connection con = null;
		Producto buscado = null;

		try {
			con = origenDatos.getConnection();
			ps = con.prepareStatement(SQL_READ);
			ps.setString(1, key.toString());
			rs = ps.executeQuery();

			while (rs.next()) {
				buscado = new Producto(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						LocalDate.parse(rs.getString(5)), rs.getBoolean(6), rs.getString(7));
			}
			return buscado;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return buscado;
	}

	@Override
	public List<Producto> readAll() {
		Connection con=null;
		PreparedStatement ps;
		ResultSet rs;
		List<Producto> productos = new ArrayList<Producto>();
		try {
			con=origenDatos.getConnection();
			ps = con.prepareStatement(SQL_READALL);
			rs = ps.executeQuery();
			while (rs.next()) {
				productos.add( new Producto(rs.getString(1),rs.getString(2), 
						rs.getString(3), rs.getDouble(4), LocalDate.parse(rs.getString(5)), rs.getBoolean(6), 
						rs.getString(7)));
			}
			return productos;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return productos;
	}

}

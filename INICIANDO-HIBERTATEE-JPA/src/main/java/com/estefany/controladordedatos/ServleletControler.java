package com.estefany.controladordedatos;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.estefany.DAO.ProductoDAO;
import com.estefany.model.Tproducto;
import com.google.gson.Gson;

/**
 * Servlet implementation class ServleletControler
 */
public class ServleletControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServleletControler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Tproducto pr = new Tproducto();
		ProductoDAO prd = new ProductoDAO();
		
		String id= null;
		String nombrepr= null;
		String preciopr= null;
		String cantidadpr= null;
		String totalpr= null;
		try {
		 id =request.getParameter("Id");
		nombrepr= request.getParameter("Nproductos");
		preciopr= request.getParameter("Pproductos");
		cantidadpr= request.getParameter("Cproductos");
		totalpr= request.getParameter("Tproductos");
			
		
		pr.setId(Integer.parseInt(id));
		pr.setNombreProducto(nombrepr);
		pr.setPrecioProducto(Double.parseDouble(preciopr));
		pr.setCantidadProducto(Integer.parseInt(cantidadpr));
		pr.setTotalProducto(Double.parseDouble(totalpr));
			
		} catch (Exception e) {
			// TODO: handle exception
		}


		String acction = request.getParameter("btn");
		if(acction.equals("GUARDAR") ) {
				

			pr.setId(Integer.parseInt(id));
			pr.setNombreProducto(nombrepr);
			pr.setPrecioProducto(Double.parseDouble(preciopr));
			pr.setCantidadProducto(Integer.parseInt(cantidadpr));
			pr.setTotalProducto(Double.parseDouble(totalpr));
			
			prd.agregarDatos(pr);
		}else if (acction.equals("ACTUALIZAR")){
			pr.setId(Integer.parseInt(id));
			pr.setNombreProducto(nombrepr);
			pr.setPrecioProducto(Double.parseDouble(preciopr));
			pr.setCantidadProducto(Integer.parseInt(cantidadpr));
			pr.setTotalProducto(Double.parseDouble(totalpr));
			 prd.actualizarDatos(pr);
		}else if(acction.equals("Eliminar")){
			pr.setId(Integer.parseInt(id));
			prd.eliminar(pr);
		}

		
		response.sendRedirect("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductoDAO prdao = new ProductoDAO();
		
		Gson json = new Gson();
		
		try {
			
			response.getWriter().append(json.toJson(prdao.productoLista()));
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		
	}

}

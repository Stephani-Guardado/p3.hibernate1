package com.estefany.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.estefany.model.Tproducto;

public class ProductoDAO {

	public List<Tproducto> productoLista (){
		
		List<Tproducto> listapr = new ArrayList<>();
		
		EntityManager em;
		EntityManagerFactory emf;
		emf = Persistence.createEntityManagerFactory("INICIANDO-HIBERTATEE-JPA");
		em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			
			listapr = em.createQuery("from Tproducto").getResultList();
			em.getTransaction().commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return listapr;
		
	}
}

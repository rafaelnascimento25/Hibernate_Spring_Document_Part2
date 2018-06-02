/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import entity.*;
import java.io.Serializable;
import java.util.*;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import org.hibernate.*;
import relatorio.Relatorio;
/**
 *
 * @author Rafael
 */

@ManagedBean
@SessionScoped
public class UsuarioModel{
        
     public List<Usuario> VerTudo(){
      Session  s = HibernateUtil.getSessionFactory().getCurrentSession();
      List<Usuario> lst = new ArrayList<Usuario>();
      try{
         s.beginTransaction();  
        lst = s.createCriteria(Usuario.class).list();
          s.getTransaction().commit();
          
      }catch (Exception e){

       e.printStackTrace();
      }  
     return lst;
        
     }  
   
   
     public void create(Usuario user) {
    
      Transaction trns = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            trns = session.beginTransaction();
            session.save(user);
            session.getTransaction().commit();
        } catch (RuntimeException e) {
            if (trns != null) {
                trns.rollback();
            }
            e.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
    }
    
     
   
     
     
     
}

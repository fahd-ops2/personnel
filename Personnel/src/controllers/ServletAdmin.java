package controllers;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import classes.Admin;

import DAO.AdminDao;



/**
 * Servlet implementation class ServletAdmin
 */
@WebServlet("/ServletAdmin")
public class ServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAdmin() {
    	
    	AdminDao Admindao= new AdminDao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int id=Integer.parseInt(request.getParameter("delete"));
			AdminDao a=new AdminDao();
			a.deleteAdmin(id);
		
		this.getServletContext().getRequestDispatcher("/AdminView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String actionID = request.getParameter("actionID");
		//ajout Admin
		
		if(actionID.equals("ajouter")){
			String email= request.getParameter("email");
			String password= request.getParameter("password");
			String nom= request.getParameter("nom");
			String prenom=request.getParameter("prenom");
			request.setAttribute("email", email);
			request.setAttribute("password", password);
			Admin e =new Admin(email,password,nom,prenom);
			System.out.println(e.toString());
	       try { 
	    	AdminDao Admindao= new AdminDao();
			Admindao.insertAdmin(e);
			System.out.println("yes");
		} catch (Exception e1) {
			System.out.println("not");
		}
	       this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}
	      //update 
	       if(actionID.equals("update")){
	    	   int iD= Integer.parseInt(request.getParameter("idA"));
	    	   String email= request.getParameter("email");
				String password= request.getParameter("password");
				Admin admin = new Admin(iD, email, password);
				System.out.println(admin.toString());
				 try { 
				    	AdminDao Admindao= new AdminDao();
						Admindao.updateAdmin(admin);
						System.out.println("yes");
					} catch (Exception e1) {
						System.out.println("not");
					}
				 this.getServletContext().getRequestDispatcher("/AdminView.jsp").forward(request, response);
				
	       }
	       //login
	       if(actionID.equals("login")){
	    	   String email=request.getParameter("email");
	    	   String password=request.getParameter("password");
	    			   try { 
	    			    	AdminDao Admindao= new AdminDao();
	    					ResultSet res =Admindao.selectAll();
	    							while(res.next()){
	    								if (res.getString(2).equals(email) && res.getString(3).equals(password)){
	    									HttpSession session =request.getSession();
	    								    session.setAttribute("nomfr", res.getString(4));
	    								    session.setAttribute("nomar", res.getString(5));
	    									this.getServletContext().getRequestDispatcher("/Acceuil.jsp").forward(request, response);}
	    								    
	    							}
	    							this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	    							
	    				} catch (Exception e1) {
	    					e1.getMessage();
	    				}
	       }
	       if(actionID.equals("ajouterA")){
				String email= request.getParameter("email");
				String password= request.getParameter("password");
				String nom= request.getParameter("nom");
				String prenom=request.getParameter("prenom");
				request.setAttribute("email", email);
				request.setAttribute("password", password);
				Admin e =new Admin(email,password,nom,prenom);
				System.out.println(e.toString());
		       try { 
		    	AdminDao Admindao= new AdminDao();
				Admindao.insertAdmin(e);
				System.out.println("yes");
			} catch (Exception e1) {
				System.out.println("not");
			}
		       this.getServletContext().getRequestDispatcher("/AdminView.jsp").forward(request, response);}
	       
	}
	

}

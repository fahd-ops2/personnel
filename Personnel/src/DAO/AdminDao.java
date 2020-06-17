/**
 * 
 */
package DAO;

import java.sql.*;

import classes.*;



/**
 * @author private
 *
 */
public class AdminDao {
	private Connection cna=null;
	/**
	 * 
	 */
	public AdminDao() {
		cna=Singleton.getConnect().getCn();
	}
	public int insertAdmin(Admin a){
		
		
		try {
			
			
             String req ="INSERT INTO `admin`( `Login`, `Password`, `nomA`, `prenomA`) VALUES ( ?, ?,?,?) ";
             PreparedStatement pst= cna.prepareStatement(req);
             pst.setString(1,a.getLogin());
             pst.setString(2,a.getPassword());
             pst.setString(3,a.getNomA());
             pst.setString(4,a.getPrenomA());
             return pst.executeUpdate();       
		} catch (SQLException e) {
			e.getMessage();
		}
		return -1; 

}
	public int deleteAdmin(int i){
		try{
			String req ="DELETE FROM `Admin` WHERE `ID`=? ";
	        PreparedStatement pst= cna.prepareStatement(req);
	        pst.setInt(1,i);
	        return pst.executeUpdate(); 
		}catch(Exception e ){
			System.out.println("Admin");
		}
		return 0;
	}
	public int updateAdmin(Admin a){
		try{
			String req ="UPDATE `admin` SET `Login`=?,`Password`=? WHERE`ID`=?";
	        PreparedStatement pst= cna.prepareStatement(req);
	        pst.setString(1,a.getLogin());
            pst.setString(2,a.getPassword());
            pst.setInt(3,a.getID());
            
	        return pst.executeUpdate(); 
		}catch(Exception e ){
			System.out.println("Admin");
		}
		return 0;
	}
	
	public ResultSet selectAll(){
		try {
			String req ="SELECT * FROM `admin` ";
			PreparedStatement pst= cna.prepareStatement(req);
			return pst.executeQuery();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public ResultSet selectby(int id){
		try {
			String req ="SELECT * FROM `admin`where id=?";
			PreparedStatement pst= cna.prepareStatement(req);
			pst.setInt(1, id);
			return pst.executeQuery();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	 /*public static void main(String[]args){
		 try{
		 Admin ad=new Admin( "faa@gmail.com", "fahda122","fs","sa");
		 AdminDao ado=new AdminDao();
		 ado.insertAdmin(ad);
		 // ResultSet res=ado.selectAll();
		  while (res.next()){
				System.out.println(res.getObject(1)+" "+res.getObject(2)+" "+res.getObject(3)+" "+res.getObject(4));
			}
		 System.out.println(ad.toString());
	      }catch(Exception e ){System.out.println("non");}
		 }*/

}

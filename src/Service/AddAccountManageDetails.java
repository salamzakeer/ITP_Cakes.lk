package Service;

import java.sql.Connection;
import java.sql.Statement;

import Connection.DbConnection;
import Entities.Account;

public class AddAccountManageDetails {
	public boolean addaccount(Account acc) {
		try {
			Connection con = DbConnection.getDBConnection();  	
			Statement st = con.createStatement();
			int i = st.executeUpdate("INSERT INTO account(TSales, TTransaction, NBalance, Apparent) Values('"+acc.getTotal()+"','"+acc.getPtotal()+"','"+acc.getTotalPrice()+"','"+acc.getApp()+"')");
			
			if(i>0) {
				return true;
			}
		
		}
		catch(Exception e){
			System.out.println(e);
		} 

		
		return false;
		
	}

}

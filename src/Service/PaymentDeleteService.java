package Service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Connection.DbConnection;

public class PaymentDeleteService {
	public boolean deletetransaction(String tid) {
	try {
		Connection con = DbConnection.getDBConnection();  	
		Statement st = con.createStatement();

			String query = "DELETE FROM transaction WHERE tid='"+tid+"'";
		
			st.executeUpdate(query);
			
			return true;
			
	
	} 

	catch (SQLException e) {
		e.printStackTrace();
		}

	return false;
}

}

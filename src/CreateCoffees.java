import java.sql.*;

public class CreateCoffees{
static Connection con;
static Statement stmt;
	public static void main(String args[]) {

		String url = "jdbc:hsqldb:hsql://localhost/";
		/*String createString = "create table COFFEES " +
							"(COF_NAME varchar(32), " +
							"SUP_ID int, " +
							"PRICE float, " +
							"SALES int, " +
							"TOTAL int)";*/

		try {
			Class.forName("org.hsqldb.jdbcDriver");

		} catch(java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		}

		try {
			con = DriverManager.getConnection(url, "sa", "");
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from flight");
   		   // stmt.executeUpdate(createString);
			while(rs.next())
			System.out.println(rs.getString("FLIGHT_ID"));
		} catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}finally{
			try{
				stmt.close();
				con.close();
			}catch(SQLException e){}
		}
	}
}


package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestSelectAuthor {
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost/library_db", "root", "");
		Statement s = c.createStatement();
		ResultSet r = s.executeQuery("SELECT `id`, `first_name`, `middle_name`, `last_name`, `birth_year`, `death_year` FROM `author`");
		while(r.next()) {
			System.out.print("id = ");
			System.out.println(r.getInt("id"));
			System.out.print("first_name = ");
			System.out.println(r.getString("first_name"));
			System.out.print("middle_name = ");
			System.out.println(r.getString("middle_name"));
			System.out.print("last_name = ");
			System.out.println(r.getString("last_name"));
			System.out.print("birth_year = ");
			System.out.println(r.getInt("birth_year"));
			System.out.print("death_year = ");
			Integer year = r.getInt("death_year");
			if(r.wasNull()) {
				year = null;
			}
			System.out.println(year);
			System.out.println("******************************");
		}
		r.close();
		s.close();
		c.close();
	}
}

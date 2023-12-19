package com.user.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.database.DatabaseConnection;

public class UserDao 
{
	public static boolean userRegistration(String uname, String uid, String upass, String city, String mob)
	{
		boolean flag =false;
		Statement st = null;
		Connection con=null;
		try
		{
			con = DatabaseConnection.databaseConnector();
			st= con.createStatement();
			String query = "insert into m_user(name,id,password,city,mob)values('"+uname+"','"+uid+"','"+upass+"','"+city+"','"+mob+"')";
			int n =st.executeUpdate(query);
			System.out.println();
			if(n!=0)
			{
				flag=true;
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return flag;
	}
	public static boolean userLogin(String uid, String upass)
	{
		boolean flag=false;
		Connection con=null;
		Statement st = null;
		ResultSet rs = null;
		try
		{
			con = DatabaseConnection.databaseConnector();
			st=con.createStatement();
			String query= "select * from m_user where id='"+uid+"'and password='"+upass+"'";
			rs=st.executeQuery(query);
			if(rs.next())
			{
				flag=true;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

}

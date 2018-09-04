package com.java.dao;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.java.beans.Emp;

public class EmpDao {
	public Emp save(Emp p) throws FileNotFoundException{
		Emp emp=new Emp();
		System.out.println(p.getId());
		if(!p.getId().equalsIgnoreCase(""))
		{
		try(FileWriter fw = new FileWriter("C:\\Users\\pavan\\AllianzProject\\TimeTrackerApplication\\src\\com\\java\\resources\\Employee.txt", true);
				BufferedWriter bw = new BufferedWriter(fw);
				PrintWriter out = new PrintWriter(bw))
				{
					System.out.println("inside save");
					out.print(p.getId()+";"+p.getEmailId()+";"+p.getDate()+";"+p.getStartTime()+";"+p.getEndTime());
					out.println();
					emp.setSuccessFlag("S");
					emp.setDisplayMsg("Data Stored Successfully");
					return emp;
					
				} catch (IOException e) {
					
					emp.setSuccessFlag("F");
					emp.setDisplayMsg("Failed to Store Data");
					return emp;
				}
		}
		else
		{
			emp.setSuccessFlag("F");
			emp.setDisplayMsg("Failed to Store Data");
			return emp;
		}


	}
	public Emp search(Emp p) throws NumberFormatException, IOException{
		List<Emp> lEmp=new ArrayList();
		File file = new File("C:\\Users\\pavan\\AllianzProject\\TimeTrackerApplication\\src\\com\\java\\resources\\Employee.txt");
		Emp emp=new Emp();
		BufferedReader br = new BufferedReader(new FileReader(file));

		String st;
		while ((st = br.readLine()) != null){
			String data[]=st.split(";");
			Emp e=new Emp();
			if(data.length!=0)
			{
				if(data[1]!=null || !data[1].equalsIgnoreCase(""))
				{
					if(p.getEmailId().equalsIgnoreCase(data[1]))
					{
						e.setId((data[0]));
						e.setEmailId(data[1]);
						e.setDate(data[2]);
						e.setStartTime(data[3]);
						e.setEndTime(data[4]);
						lEmp.add(e);
					}
				}
			}
		}
		if(lEmp.size()==0)
		{
			emp.setSuccessFlag("F");
			emp.setDisplayMsg("No records Found");
			return emp;
		}
		else
		{
			emp.setSuccessFlag("S");
			emp.setDisplayMsg("Data Retreived Successfully");
			emp.setlEmp(lEmp);
			return emp;		

		}

	}


	public Emp getEmployees() throws NumberFormatException, IOException{
		List<Emp> lEmp=new ArrayList();
		File file = new File("C:\\Users\\pavan\\AllianzProject\\TimeTrackerApplication\\src\\com\\java\\resources\\Employee.txt");

		BufferedReader br = new BufferedReader(new FileReader(file));
		Emp emp=new Emp();
		String st;
		while ((st = br.readLine()) != null){
			String data[]=st.split(";");
			if(data.length!=0)
			{
				Emp e=new Emp();
				e.setId((data[0]));
				e.setEmailId(data[1]);
				e.setDate(data[2]);
				e.setStartTime(data[3]);
				e.setEndTime(data[4]);
				lEmp.add(e);
			}
		}
		emp.setSuccessFlag("S");
		emp.setDisplayMsg("Data Retreived Successfully");
		emp.setlEmp(lEmp);

		return emp;
	}
}

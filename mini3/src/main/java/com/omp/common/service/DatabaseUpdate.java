package com.omp.common.service;

import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecutor;
import org.springframework.stereotype.Service;

@Service
public class DatabaseUpdate {

	public void scheduler() throws Exception{	
		try {
			String[] command = {
					"python", 
					"C:\\Users\\ailee\\PycharmProjects\\lec07_python\\day01\\type_car.py"
			};
			DefaultExecutor executor = new DefaultExecutor();
			CommandLine cmdLine = CommandLine.parse(command[0]);
			for (int i=1, n=command.length ; i<n ; i++ ) {
				cmdLine.addArgument(command[i]);
			}
			executor.execute(cmdLine);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}

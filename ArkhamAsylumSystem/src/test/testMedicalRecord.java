package test;

import static org.junit.Assert.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class testMedicalRecord {
	
	private String URL;

	@Before
	public void setUp() throws Exception {
		
		this.URL= "http://localhost:8080/ArkhamAsylumSystem/rest/medical_record_service/";
	}


	@Test
	public void test() {
		
	
		try{
			URL url = new URL(URL+"view_patient_requests/");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(false);
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "text/plain");

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			String output;
			System.out.println("Output from Server:\n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}
			conn.disconnect();
			
		  } catch (Exception e) {
			e.printStackTrace();
			fail("No Access to server");
		  }
		
	}
	@Test
	public void testViewPatientRequest() {
		
		
	
		try{
			URL url = new URL(URL+"view_patient_requests/");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(false);
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "text/plain");

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			String output;
			System.out.println("Output from Server:\n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}
			conn.disconnect();
			
		  } catch (Exception e) {
			e.printStackTrace();
			fail("No Access to server");
		  }
		
	}
	
	@Test
	public void testViewPersonelInfo() {
		
		
	
		try{
			URL url = new URL(URL+"view_personel_info/");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(false);
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "text/plain");

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			String output;
			System.out.println("Output from Server:\n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}
			conn.disconnect();
			
		  } catch (Exception e) {
			e.printStackTrace();
			fail("No Access to server");
		  }
		
	}

}

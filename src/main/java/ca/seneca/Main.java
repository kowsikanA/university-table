package ca.seneca;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JSONArray universities = new JSONArray();
        try {
            URL url = new URL("http://universities.hipolabs.com/search?country=Canada");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder response = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            reader.close();

            // Parse the response into a JSON array
            universities = new JSONArray(response.toString());
//            
//            for (int i = 0; i < universities.length(); i++) {
//            	System.out.println(universities.get(i));
//            }
//            System.out.println(universities.get(0).toString());
            //{"country":"Canada","web_pages":["https://tbs.edu"],"name":"Toronto Baptist Seminary and Bible College","domains":["tbs.edu"],"alpha_two_code":"CA","state-province":"Ontario"}
            
    		
    		
            for (int i = 0; i < universities.length(); i++) {
            	JSONArray webPagesArray = universities.getJSONObject(i).getJSONArray("web_pages");
            	
            	 System.out.println("Websites #" + i + ": " + webPagesArray.get(0));
            
            }
           
        } catch (IOException e) {
            // Handle error
            e.printStackTrace(); // Log the error
        }
	}

}

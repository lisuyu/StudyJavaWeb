package iata.zttc.http;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class TestHttp {
    public static void main(String[] args) {
        try {
            Socket s = new Socket("localhost",8086);
            PrintWriter out = new PrintWriter(s.getOutputStream(),true);
            BufferedReader reader = new BufferedReader(new InputStreamReader(s.getInputStream()));
            out.println("GET /TestWeb01_war_exploded/reg.html HTTP/1.1");
            out.println("Host: localhost");
            out.println("contentType:text/html");
            out.println();
            String str = null;
            while ((str=reader.readLine())!=null){
                System.out.println(str);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

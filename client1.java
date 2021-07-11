import java.io.*;
import java.net.*;

public class client1 {
    public static void main(String args[]) throws IOException {
        Socket s = null;
        BufferedReader b = null;
        try {
            s = new Socket(InetAddress.getLocalHost(), 98);
            b = new BufferedReader(new InputStreamReader(s.getInputStream()));
        } catch (UnknownHostException u) {
            System.err.println("I dont know host");
            System.exit(0);
        }

        String inp;
        while ((inp = b.readLine()) != null) {
            System.out.println(inp);
        }
        b.close();
        s.close();
    }
}
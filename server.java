import java.io.*;
import java.net.*;

public class server {

    public static void main(String[] args) {
        Socket socket = null;
        int count = 0;
        ServerSocket serverSocket = null;
        System.out.println("Server is waiting for clients to connect");
        try {

            serverSocket = new ServerSocket(98);
        } catch (Exception e) {
            System.out.println("Server not found at 98");
        }

        while (true) {
            try {
                socket = serverSocket.accept();
                System.out.println("Connection Established with Client  " + (++count)+" " + socket);
                ServerThread st = new ServerThread(socket);
                st.start();

            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }
}

class ServerThread extends Thread {
    static int count = 0;
    String line = null;
    Socket skt = null;
    DataInputStream is = null;
    PrintWriter out = null;
    BufferedReader sin = null;

    public ServerThread(Socket s) {
        this.skt = s;
    }

    public void run() {

        try {
            out = new PrintWriter(skt.getOutputStream(), true);
            sin = new BufferedReader(new InputStreamReader(System.in));
            System.out.println("Now Server is ready to communiacte " + (++count));
            while ((line = sin.readLine()) != null || line != "Exit") {
                out.println(line);
            }
            out.close();
            sin.close();
            skt.close();
        } catch (Exception e) {
            System.out.println("Couldn't connect");
        }
    }

}
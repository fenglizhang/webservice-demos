package webServiceDemo.com.zlf;

import javax.jws.WebService;
import javax.xml.ws.Endpoint;

@WebService
public class HelloService {
	  public String sayHello(String name){

          System.out.println("sayHello Called...");

          return "hello   "+name;

     }

     public static void main(String[] args){

          //参数1：绑定服务的地址

          //参数2：提供服务的实例
//注意点：这里的发布地址必须为本机的ip地址。端口号可以随意，不重复就行。之前用的网上粘过来的的地址124.205.244.130并不行。
  //启动报了异常： com.sun.xml.internal.ws.server.ServerRtException: Server Runtime Error: java.net.BindException: Cannot assign requested address: bind
    	 Endpoint.publish("http://127.0.0.1:5678/hello", new HelloService());

          System.out.println("server ready...");

     }
}

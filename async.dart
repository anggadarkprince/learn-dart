import 'dart:io';
import "dart:async";

void main() async { 
  //print("Enter your name :");            
   
  // prompt for user input 
  //String name = stdin.readLineSync();  
   
  // this is a synchronous method that reads user input 
  //print("Hello Mr. ${name}");

  File file = new File( Directory.current.path+"\\contact.txt"); 
  Future<String> f = file.readAsString();  
  
  // returns a futrue, this is Async method 
  f.then((data) => print(data));  
   
  // once file is read , call back method is invoked  
  print("End of main");

  print(createOrderMessage());
  String order = await fetchUserOrder();
  print(order);  
}

String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
  // Imagine that this function is more complex and slow.
  Future.delayed(Duration(seconds: 2), () => 'Large Latte');
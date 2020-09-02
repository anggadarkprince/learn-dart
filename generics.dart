void main() {
  List <String> logTypes = new List <String>(); 
  logTypes.add("WARNING"); 
  logTypes.add("ERROR"); 
  logTypes.add("INFO");  
   
  // iterating across list 
  for (String type in logTypes) { 
    print(type); 
  }

  Set <int>numberSet = new  Set<int>(); 
  numberSet.add(100); 
  numberSet.add(20); 
  numberSet.add(5); 
  numberSet.add(60);
  numberSet.add(70); 
   
  // numberSet.add("Tom"); 
  print("Default implementation :${numberSet.runtimeType}");  
   
  for (var no in numberSet) { 
    print(no); 
  }

  Map <String, String> m = {'name': 'Tom', 'id': 'E1001'}; 
  print('Map: ${m}'); 
}
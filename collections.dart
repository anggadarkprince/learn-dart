import 'dart:collection';

void main() {
  // LIST
  // Fixed Length List − The list’s length cannot change at run-time.
  var listName = new List(2);
  listName[0] = 'Angga';
  listName[1] = 'Ari';
  //listName[2] = 'Wijaya';
  print(listName);
  var listName2 = ['Angga', 'Ari']; // equal
  print(listName2);
  print('-----------------------');

  // Growable List − The list’s length can change at run-time.
  List listNames = new List();
  // listNames[0] = 'Ari'; throw RangeError
  listNames.add('Angga');
  listNames.add('Wijaya');
  print(listNames);
  print(listNames.first);
  print(listNames.last);
  print(listNames.isEmpty);
  print(listNames[0]);
  print(listNames.elementAt(0));
  listNames[1] = 'Ari';
  listNames.add('Wijaya');
  print(listNames);
  listNames.remove('Wijaya');
  print(listNames);
  print('-----------------------');

  // SET guarantee order
  Set numberSet = new Set(); 
  numberSet.add(100); 
  numberSet.add(20); 
  numberSet.add(5);
  numberSet.add(60); 
  numberSet.add(70);
  numberSet.add(70); // only added once
  print(numberSet);
  for (var no in numberSet) { 
    print(no); 
  }
  Set numberSet2 = new Set.from([12, 13, 14]);
  print(numberSet2);
  print('-----------------------');

  // HashSet unordered set
  Set numbers = new  HashSet(); 
  numbers.add(100); 
  numbers.add(20); 
  numbers.add(5); 
  numbers.add(60); 
  numbers.add(70); 
  print("Default implementation :${numbers.runtimeType}"); 
  for(var no in numbers){ 
    print(no); 
  }

   // MAP
  // linked has map
  Map details = new Map(); 
  details['username'] = 'admin'; 
  details['password'] = 'admin@123'; 
  print(details); 
  print(details['username']); 
  Map accounts = {'email': 'angga@mail.com', 'dept': 'IT', '323525': 'John Smith', '588982': 'Alice Jones'}; // guarantee
  print(accounts);
  details.forEach((k, v) => print('$k: $v'));
  print('-----------------------');

  // no guarante print dept then name then email  
  HashMap accountData = new HashMap(); 
  accountData['dept']='HR'; 
  accountData['name']='Tom'; 
  accountData['email']='tom@xyz.com'; 
  print('Map after adding  entries : ${accountData}'); 

  // linked has map, guarante print alice after bob 
  var ordered = new LinkedHashMap();
  ordered['32352'] = 'Alice';
  ordered['95594'] = 'Bob';
  for (var key in ordered.keys) {
    print(key);
  }

  Queue queue = new Queue(); 
  print("Default implementation ${queue.runtimeType}"); 
  queue.add(10); 
  queue.add(20); 
  queue.add(30); 
  queue.add(40); 
  queue.addFirst(400);
  queue.addLast(500);
  queue.removeFirst();
  for(var no in queue){ 
    print(no); 
  } 
}
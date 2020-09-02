void main() {
  print(test('Hello'));
  print(test('Hello', subject: 'Angga'));
  print(shout('Hey', 'Angga', 'Ari'));
  print(sumNumber(1, 2));
}

String test(greeting, {subject: 'world'}) {
  return "$greeting $subject";
}

String shout(greeting, [subject, to]) {
  return "$greeting $subject $to";
}

int sumNumber(a, b) => a + b;

// type def
typedef ManyOperation(int firstNo , int secondNo);
Add(int firstNo, int second){ 
   print("Add result is ${firstNo+second}"); 
} 
Subtract(int firstNo, int second){ 
   print("Subtract result is ${firstNo-second}"); 
}
Divide(int firstNo, int second){ 
   print("Divide result is ${firstNo/second}"); 
} 
void main() {
  int a = 4;
  print(a);
  print(a.isNegative);
  Test t = new Test();
  t.sound();

  var b = 5;
  print(b);
  print(b is int);
  print(b is! String);

  double num2 = 10.50;
  print(num2);
  print(num2.ceil());

  String no;
  print(no);

  dynamic x = "tom";
  print(x);
  print(x.isEmpty);
  print(x.length);
  print(x.trim().toUpperCase());

  const two = 2;
  //final three = 3;
  const area = two * 12 * 12;
  print(area);

  print("2 + 3");
}

class Test {
  static const two = 2;
  final three = 3;

  void sound() {
    print('hello ${three + 1}');
  }
}
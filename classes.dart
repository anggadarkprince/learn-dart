void main() {
  print(Status.values);
  Status.values.forEach((v) => print('value: $v, index: ${v.index}'));

  Calculator c = new Calculator('Calculator Ajaib');
  print(c.calculatorName);
  c.calculatorName = "Calculator Biasa Aja";
  print(c.calculatorName);
  
  print("The gross total : ${c.retTotal()}");
  print("Discount : ${c.retDiscount()}");
  
  Calculator c2 = new Calculator.withInitialData(500, discount: 25);
  print(c2.getTotal());
  
  CalculatorVoucher voucher = new CalculatorVoucher();
  print(voucher.retDiscount());
  
  new CalculatorVoucher() 
   ..retDiscount() 
   ..retTotal();
}

enum Status { none, running, stopped, paused }


abstract class CalculateTotal {
  int retTotal();
}

abstract class CalculateDiscount {
  int retDiscount();
}

class Calculator implements CalculateTotal, CalculateDiscount {
  String name;
  int total = 0;
  int discount = 0;
  
  Calculator(String name) {
    this.name = name;
  }

  Calculator.withInitialData(int total, {discount: 0}) {
    this.total = total;
    this.discount = discount;
    print("Initial data are : ${this.total} and ${this.discount}");
  }
  
  String get calculatorName {
    return this.name;
  }
  
  set calculatorName(String name) {
    this.name = name;
  }

  @override
  int retTotal() {
    return this.total;
  }

  @override
  int retDiscount() {
    return this.discount;
  }
  
  int getTotal() {
    return this.retTotal() - this.retDiscount();
  }
}

class CalculatorVoucher extends Calculator {
  static int defaultDiscount = 1000;
  String voucherName;
  
  CalculatorVoucher() : super('Calculator Voucher');
  
  CalculatorVoucher.withInitialData(int total) :
    voucherName = 'Voucher',
    super.withInitialData(total, discount: CalculatorVoucher.defaultDiscount);
    
  @override 
  int retDiscount() { 
    print('get discount');
    return CalculatorVoucher.defaultDiscount > 0 
      ? CalculatorVoucher.defaultDiscount
      : super.retDiscount();
  }
  
  @override
  int retTotal() {
    print('get total');
    return this.total;
  }  
}

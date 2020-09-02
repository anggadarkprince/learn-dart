void main() { 
  int x = 12; 
  int y = 0; 
  int res;  
   
  try {
    //throw new FormatException(); 
    res = x ~/ y;
    print(res);
  }
  on IntegerDivisionByZeroException catch(e) { 
    print('Division by Zero: $e'); 
  }
  catch(e) { 
    print(e); 
  }
  finally {
    print('Send to log services whether error or not');
  }

  try {
    setPassword('1234');
  }
  catch(e) { 
    print(e.errMsg()); 
  }
}

void setPassword(String password) { 
   if (password == '1234') { 
      throw new SimplePasswordException(); 
   } 
} 

class SimplePasswordException implements Exception { 
   String errMsg() => 'Password should not 1234'; 
}
//functions of the problem 21
import 'dart:math';

int divisorsSum(int a){
  int sum =0;
  for (int i = 1; i <a; i++){
    if(a%i ==0){
      sum +=i;
    }
  }
  return sum;
}
bool isAmicable(int n1){
  int n2 = divisorsSum(n1);
  bool comrade;
  if(n2 != n1 && divisorsSum(n2)==n1){
    comrade = true;
  }
  else {
    comrade = false;
  }
  return comrade;
}


bool isPrime(int x){
  if(x<0) {
    throw ArgumentError("Negative Number");
  }
  if(x == 0 || x==1){
    return false;
  }
  else if (x==2){
    return true;
  }
  else {
    if(x % 2 == 0 ) {
      return false;
    }
    for(double i = 3, end = sqrt(x)  ; i<= end; i+=2){
      if(x%i ==0) {
        return false;
      }
    }
    return true;
  }
}
int numberOfConsecutivePrimesGenerated(int a, int b){
  for(int i = 0; ;i++){
    int n = i * i + i * a + b;
    if(n < 0 || !isPrime(n)) {
      return i;
    }
  }
}
int sum(a,b){
  return a+b;
}
int multiplication(a,b){
  return a*b;
}
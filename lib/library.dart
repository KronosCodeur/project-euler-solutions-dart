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
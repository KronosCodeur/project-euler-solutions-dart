
bool isPandigital(String s){
  if(s.length !=9) {
    return false;
  }
  else{
    List temp = s.split('');
    temp.sort();
    if(temp.join() == "123456789") {
      return true;
    }
    else
    {
      return false;
    }
  }
}
bool hasPandigitalProduct(int number){

  for (int i = 1; i <= number; i++) {
    if (number % i == 0 && isPandigital("$number" "$i" '${number/i}')==true) {
      return true;
    }
  }
  return false;
}

int Pandigital(){
  int sum = 0;
  for(int a = 1; a < 10000; a++ ){
    for(int b = 1; b<a; b++){
      int c = a*b;
      String string = "$a$b$c";
      if(isPandigital(string) == true){
        sum +=c;
      }
      else
        {
          continue;
        }
    }
  }
  return sum;
}
void main(){
  /*int sum = 0;
  for (int i = 1; i < 10000; i++) {
    if (hasPandigitalProduct(i) == true) {
      sum+= i;
    }
  }
  print(sum);*/
  print(Pandigital());
}

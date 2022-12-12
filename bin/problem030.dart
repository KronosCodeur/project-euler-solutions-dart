import 'package:project_euler/library.dart' as peuler;
int fifthPowerDigitSum(int x){
  int sum = 0;
  while (x!=0){
    int y = x%10;
    sum += peuler.power(5,y);
    x ~/= 10;
  }
  return sum;
}
void main(){
  int sum = 0;
  for (int i = 2; i < 1000000; i++) {
    if (i == fifthPowerDigitSum(i))
      sum += i;
  }
  print(sum);
}
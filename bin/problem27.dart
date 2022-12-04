import 'package:project_euler/library.dart' as peuler;
void main(){
  int bestNum =0;
  int bestA =0;
  int bestB =0;
  for(int a = -1000; a <= 1000; a++){
    for(int b = -1000; b <= 1000; b++){
      int num = peuler.numberOfConsecutivePrimesGenerated(a, b);
      if (num > bestNum){
        bestNum = num;
        bestA = a;
        bestB = b;
      }
    }
  }
  int result = peuler.multiplication(bestA,bestB);
  print(result);
}
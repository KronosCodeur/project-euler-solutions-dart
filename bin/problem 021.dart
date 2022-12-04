import 'package:project_euler/library.dart' as peuler;
void main (){
  int sum = 0;
  for(int i = 1; i<10000; i++){
    if(peuler.isAmicable(i)==true){
      sum +=i;
    }
  }
  print(sum);
}

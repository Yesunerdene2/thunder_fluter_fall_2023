
void main(){
  print('lesson day 06');
  print(calculateSquareArea(10.5));
  print(calculateSquareArea(5.6,b:6.0));
  print(calculateSquareArea(7.0, b:3.0));

}


double calculateSquareArea(double a ,{double b=2.0}){
  return a *b;
}
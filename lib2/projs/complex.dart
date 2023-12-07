import 'dart:io';
class complex{

 late int r;
 late double rl;

 complex(int r, double rl){
   this.r=r;
   this.rl=rl;
 }

 complex summation(complex c1, complex c2){
      int sr= c1.r+c2.r;
      double srl=c1.rl+c2.rl;
      return complex(sr,srl);
 }
 complex mult(complex c1, complex c2){
   int mr= c1.r*c2.r;
   double mrl=c1.rl*c2.rl;
   return complex(mr,mrl);
 }
 complex sub(complex c1, complex c2){
   int sur= c1.r+c2.r;
   double surl=c1.rl+c2.rl;
   return complex(sur,surl);
 }
}
main(){
  print('choose the operation\n 1-sum\n 2-subtract\n 3-multiply\n');
  int ch=int.parse(stdin.readLineSync()!);
  complex c1 = complex(10,10.5);
  complex c2 = complex(5,5.5);
  complex res=complex(0,0);
  if(ch==1){
    res=c1.summation(c1,c2);
    print(' res of sum ${res.r} , ${res.rl}');
  }
  else if(ch==2){
    res=c1.sub(c1,c2);
    print(' res of sub ${res.r} , ${res.rl}');
  }
  else if(ch==3){
    res=c1.mult(c1,c2);
    print(' res of multiply ${res.r} , ${res.rl}');
  }
  else print('enter valid operation');
}
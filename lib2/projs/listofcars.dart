import 'dart:io';
class Car{
  late String model;
  late int code;
  late String color;
  late double price;
}
void carinfo(Car c){
  print(' model ${c.model}');
  print('code ${c.code}');
  print('color ${c.color}');
  print('price ${c.price}');
}
main(){
  List<Car>cars=[];
  print('enter number of cars u want to add');
  int num=int.parse(stdin.readLineSync()!);
  Car car=Car();
  double total=0;
  double max=0,min=999999999999999;
  for(int i=0;i<num;i++){
    Car car=Car();
    print ('enter info of car ${i+1}');
    print("enter car model ");
    car.model = stdin.readLineSync()!;
    print("enter car code ");
    car.code = int.parse(stdin.readLineSync()!);
    print("enter car color ");
    car.color = stdin.readLineSync()!;
    print("enter car price ");
    car.price = double.parse(stdin.readLineSync()!);
    if (car.price > max) {
      max = car.price;
    }
    if (car.price < min) {
      min = car.price;
    }
    total+=car.price;
    cars.add(car);

  }
  for(int i=0;i<num;i++){
    print ('info of car ${i+1}');
    carinfo(cars[i]);
    print('*****************************');
  }
  print (' max price is $max ');
  print ('min price is $min');
  print ('total price of cars $total');
}

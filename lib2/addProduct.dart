import 'dart:io';

class addProduct {
  late String name='';
  late String des='';
  late double price=0.0;
  late double discount=0.0;
  late int q=0;

  void addproduct() {
    print('enter the product name');
    this.name = stdin.readLineSync()!;
    print('enter the product description');
    this.des = stdin.readLineSync()!;
    print('enter the product price');
    this.price = double.parse(stdin.readLineSync()!);
    print('enter the product discount');
    this.discount = double.parse(stdin.readLineSync()!);
    print('enter the product quantity');
    this.q = int.parse(stdin.readLineSync()!);
  }

  getproduct() {
    return {
      'name': name,
      'description': des,
      'price': price,
      'discount': discount,
      'quantity': q
    };
  }
}

import 'dart:io';
import 'products.dart';
import 'shop.dart';
void main() {
  product t = product();
  shop s= shop();
  String ch='';
  do {
    product t = product();
    shop s = shop();
    print(
        '1. add product \n 2. del product \n '
            '3. show products \n 4. add visitor \n '
            '5. show visitor \n 6. add product to shop cart  \n 7. show shop cart '
            '\n 8.total price \n 9. total after discount \n '
            '10. search by name \n 11. search by price ''\n'
            '  12. del from cart');
    int ans = int.parse(stdin.readLineSync()!);
    switch (ans) {
      case 1:
        t.addproduct();
        break;
      case 2:
        t.deleteproduct();
        break;
      case 3:
        t.show_products();
        break;
      case 4:
        t.addvisitor();
        break;
      case 5:
        t.show_visitor();
        break;
      case 6:
        s.addtocar();
        break;
      case 7:
        s.showShopCar();
        break;
      case 8:
        s.total_price();
        break;
      case 9:
        s.total_priceAfterDiscount();
        break;
      case 10:
        t.searchBy_name();
        break;
      case 11:
        t.searchBy_price();
        break;
      case 12:
        s.del_productformcar();
        break;
      default:
        print('enter valid choice');
    }
    print('Do u want to continue (y/n)');
    ch = stdin.readLineSync()!;
  } while (ch == 'y' || ch =='Y');
}

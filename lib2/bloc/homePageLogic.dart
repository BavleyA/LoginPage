import 'package:bloc/bloc.dart';
import 'package:flutter_app/bloc/homePageState.dart';
import '../main1.dart';

class homePageLogic extends Cubit<homePageState>{
  List customers = c;
  homePageLogic() : super(InitHomePage());
  void getcustomers(){
    customers = c;
    emit(getCustomers());
  }
}
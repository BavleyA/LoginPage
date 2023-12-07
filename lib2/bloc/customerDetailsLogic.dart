import 'package:bloc/bloc.dart';
import 'package:flutter_app/bloc/customerDetailsState.dart';
import '../main1.dart';


class customerDetailsLogic extends Cubit<customerDetailsState>{
  List oldOp = [];
  customerDetailsLogic() : super(InitHomePage());
  void getoldop(i){
    oldOp = c[i]['transactions']['oldTrx'];
    emit(getOldOp());
  }
}
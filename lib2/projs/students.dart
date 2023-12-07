import 'dart:io';
main()
{
  List<Map> students=[];
  print ('enter number of students');
  int num=int.parse(stdin.readLineSync()!);
  for(int i=0;i<num;i++) {
    print('enter info of student no ${i + 1}');
    print('enter code');
    int code = int.parse(stdin.readLineSync()!);
    print('enter name');
    String name = stdin.readLineSync()!;
    print('enter age');
    int age = int.parse(stdin.readLineSync()!);
    print('enter number of subjects');
    int nos = int.parse(stdin.readLineSync()!);

    List<double> deg = [];
    double sum = 0;
    double per = 0;
    for (int j = 0; j < nos; j++) {
      print('enter degree ${j + 1} less or equal 50');
      double degree = double.parse(stdin.readLineSync()!);
      sum += degree;
      deg.add(degree);
    }
    per = (sum / nos * 50) * 100;
    String g='';
    if (per >= 50 && per < 65) {
      g = 'pass';
    }
    else if (per >= 65 && per < 75) {
      g = 'good';
    }
    else if (per >= 75 && per < 85) {
      g = 'very good';
    }
    else if (per >= 85) {
      g = 'excellent';
    }
    else g='fail';

    Map<String,dynamic>mymap={
      'code' :code,
      'name ': name ,
      'age':age ,
      'degrees':deg ,
      'grade':g,
    };
    //print(mymap);
    students.add(mymap);
    //students.add({'code' :code , 'name ': name ,'age':age ,'degrees':deg ,'grade':g});
  }
  students.forEach((mymap){
    print(mymap);
  /*print ('code : ${mymap['code']}');
  print ('name : ${mymap['name']}');
  print ('age : ${mymap['age']}');
  print ('degrees : ${mymap['degrees']}');
  print ('grade : ${mymap['grade']}');*/
  });
}
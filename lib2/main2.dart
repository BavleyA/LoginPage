
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
main(){
runApp(MaterialApp(home: app(),

));
}
class app extends StatefulWidget {
@override
_appState createState() => _appState();
}

class _appState extends State<app> {

late File imageFile;

_show(BuildContext context) {
return showDialog(context: context,
builder: (context) =>
AlertDialog(
title: Text(' Make a choise'),
content: SingleChildScrollView(
child: Column(
children: [
ListTile(
leading: Icon(Icons.image),
title: Text('Gallery'),
onTap: () => _imageFromGallery(context),
),
ListTile(
leading: Icon(Icons.camera),
title: Text('Camera'),
onTap: () => _imageFromCamera(context),
)
],
),
),
)
);
}
Future _imageFromGallery(BuildContext context) async{
ImagePicker _picker = ImagePicker();
var image = await _picker.pickImage(source: ImageSource.gallery);
setState(() {
imageFile = image as File ;
});


Navigator.pop(context);
}
Future _imageFromCamera(BuildContext context) async{
ImagePicker _picker = ImagePicker();
var  image = await _picker.pickImage(source: ImageSource.camera);
imageFile = image as File ;
setState(() {

});


Navigator.pop(context);
}
@override
Widget build(BuildContext context) {
return  Scaffold(
appBar: AppBar(
title: Text('upload a photo'),
backgroundColor: Colors.black,
leading: Icon(Icons.add_photo_alternate),
),
body: Center(
child: imageFile!=null
?Image.file( imageFile, width: 450,height: 450,)
    :Text('There is no photo'),

),
floatingActionButton:
FloatingActionButton(onPressed: ()=>
_show(context),
child : Icon(Icons.add_photo_alternate),
),
);



}
}
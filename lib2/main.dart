import 'package:flutter/material.dart';
import 'revApp.dart';
import 'package:flutter_app/models/chat.dart';
void main() {
  runApp(
    MaterialApp (
      debugShowCheckedModeBanner: false,
        home:app(),
    )
  );
}
class app extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 50),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'example@mail.com',
                    suffixIcon: Icon(Icons.email)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'enter your password',
                    suffixIcon: Icon(Icons.lock)),
              ),
            ),
            MaterialButton(
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (c){
                      return Rev(email.text,password.text);
                    })
                );
              },
              child: Text('Login',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var emailController=TextEditingController();
  var passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'login',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),*/
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      child:Image.asset("assets/images/syrup.png",
                        width: 100,
                      ) ,
                    ),

                    Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy Pro',
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      onFieldSubmitted: (value){
                        print(value);
                      },
                      onChanged: (String value){
                        print(value);
                      },
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white10,
                        ),
                        filled: true,
                        fillColor: Color(0x20ffffff),
                        focusColor: Colors.red,
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passController,
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 200,
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      onFieldSubmitted: (value){
                        print(value);
                      },
                      onChanged: (String value){
                        print(value);
                      },
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_rounded,
                            color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.white10,
                        ),
                        filled: true,
                        fillColor: Color(0x20ffffff),
                        focusColor: Colors.red,
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                      /*SizedBox(
                        height: 15,
                      ),*/
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: InkWell(
                          onTap:() {
                            print(emailController.text);
                            print(passController.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Home_Page();
                            }));
                          },
                          borderRadius: BorderRadius.circular(100),
                          //focusColor: Colors.white,
                            child: Text(
                              'LOGIN',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Gilroy Pro',
                              ),
                            ),
                        ),
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account ?',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register Now',
                            ))
                      ],

                    )
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}

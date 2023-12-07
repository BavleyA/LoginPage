import 'dart:ui';

import 'package:flutter/material.dart';
import '../main1.dart';

class customer extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String errorMessage='';
    return Scaffold(
      appBar: AppBar(
        title: Text('Add customer'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: 'Name', hintText: 'Enter the customer name'),
              ),
            ),
            Card(
              child: TextField(
                maxLength: 11,
                keyboardType: TextInputType.number,
                controller: number,
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
            ),
            Card(
              child: TextField(
                controller: address,
                decoration: InputDecoration(labelText: 'Address'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    //_dialogBuilder(context);
                    String f ='not found';
                    for(int i = 0 ; i < c.length ; i++){
                      if(c[i]['name'] == name.text){
                        f ='found';
                      }
                    }
                    if(f == 'not found'){
                      c.add({
                        'name': name.text,
                        'number': number.text,
                        'address': address.text,
                        'transactions': {'lastBalance': 0, 'oldTrx': []}
                      });
                      Navigator.of(context).pop();
                      return;
                    }
                    _dialogBuilder(context);
                   /* else {
                      _dialogBuilder(context);
                      print('0009');
                    }*/
                    //Navigator.of(context).pop();

                  },
                  color: Colors.blueAccent,
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Authentication Error',
          style:TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
            color: Colors.red,
          ) ,
          ),
          content:  const Text(
            'This UserName You Choosed Is Already Taken !\n'
                'Please Try Enter Another UserName',
            style:TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ) ,

          ),
          actions: <Widget>[
            /*TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
             */

            TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

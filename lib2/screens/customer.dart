import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/customerDetailsState.dart';
import 'package:flutter_app/bloc/customerDetailsLogic.dart';
import 'package:flutter_app/bloc/customerDetailsState.dart';
import 'package:flutter_app/screens/newOperation.dart';
import '../main1.dart';

class customerDetails extends StatelessWidget {
  Map customer = {};

  customerDetails(this.customer);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => customerDetailsLogic(),
      child: BlocConsumer<customerDetailsLogic, customerDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          customerDetailsLogic obj = BlocProvider.of(context);
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.add,
                size: 40,
              ),
              onPressed: () {
                int x = 0;
                for (int i = 0; i < c.length; i++) {
                  if (c[i]['name'] == customer['name']) {
                    x = i;
                  }
                }
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return newOperation(customer);
                })).then((context) => obj.getoldop(x));
                // Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                //   return customer();
                // })).then((value) => setState(() => {}));
              },
            ),
            appBar: AppBar(
              title: Text(
                customer['name'],
                style: TextStyle(fontSize: 25),
              ),
            ),
            body: Container(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Name : ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              customer['name'],
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Phone Number : ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              customer['number'],
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Address : ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              customer['address'],
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Table(
                          border: TableBorder(
                              horizontalInside: BorderSide(
                                  width: 1, style: BorderStyle.solid)),
                          columnWidths: const {
                            0: FlexColumnWidth(2),
                            1: FlexColumnWidth(1),
                            2: FlexColumnWidth(3),
                            3: FlexColumnWidth(2),
                            4: FlexColumnWidth(2.2),
                          },
                          children: [
                            TableRow(children: [
                              Text(
                                "Balance",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Op",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Details",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Amount",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Time",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ]),
                            for (int i = 0;
                                i < customer['transactions']['oldTrx'].length;
                                i++)
                              TableRow(children: [
                                Text(
                                  customer['transactions']['oldTrx'][i]['balance'].toString(),
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  customer['transactions']['oldTrx'][i]['op'],
                                  style: TextStyle(
                                      fontSize: 23.0, color: Colors.green),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  customer['transactions']['oldTrx'][i]
                                      ['details'],
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  customer['transactions']['oldTrx'][i]
                                          ['amount']
                                      .toString(),
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  customer['transactions']['oldTrx'][i]['time'],
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// class customerDetails extends StatelessWidget {
//   Map customer ={};
//   customerDetails(this.customer);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.blueAccent,
//         child: Icon(
//           Icons.add,
//           size: 40,
//         ),
//         onPressed: () {
//           // Navigator.of(context).push(
//           //     MaterialPageRoute(builder: (c){
//           //       return newOperation(customer);
//           //     })
//           // );
//           // Navigator.of(context).push(MaterialPageRoute(builder: (c) {
//           //   return customer();
//           // })).then((value) => setState(() => {}));
//         },
//       ),
//       appBar: AppBar(
//         title: Text(
//           customer['name'],
//           style: TextStyle(fontSize: 25),
//         ),
//       ),
//       body: Container(
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Text(
//                         'Name : ',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w900),
//                       ),
//                       Text(
//                         customer['name'],
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Text(
//                         'Phone Number : ',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w900),
//                       ),
//                       Text(
//                         customer['number'],
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Text(
//                         'Address : ',
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.w900),
//                       ),
//                       Text(
//                         customer['address'],
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(15.0),
//
//                   child: Table(
//
//                     border: TableBorder(horizontalInside: BorderSide(width: 1, style: BorderStyle.solid)),
//                     columnWidths: const {
//                       0: FlexColumnWidth(2),
//                       1: FlexColumnWidth(1),
//                       2: FlexColumnWidth(3),
//                       3: FlexColumnWidth(2),
//                       4: FlexColumnWidth(2),
//                     },
//                     children: [
//                       TableRow(children: [
//
//                         Text(
//                           "Balance",
//                           style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
//                         ),
//                         Text(
//                           "Op",
//                           style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
//                         ),
//                         Text(
//                           "Details",
//                           style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
//                         ),
//                         Text(
//                           "Amount",
//                           style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
//                         ),
//                         Text(
//                           "Time",
//                           style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
//                         ),
//                       ]),
//                       for (int i = 0 ; i < customer['transactions']['oldTrx'].length ; i++)
//                         TableRow(children: [
//                           Text(
//                             "200",
//                             style: TextStyle(fontSize: 18.0),textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             customer['transactions']['oldTrx'][i]['op'],
//                             style: TextStyle(fontSize: 23.0,color: Colors.green),textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             customer['transactions']['oldTrx'][i]['details'],
//                             style: TextStyle(fontSize: 18.0),textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             customer['transactions']['oldTrx'][i]['amount'].toString(),
//                             style: TextStyle(fontSize: 18.0),textAlign: TextAlign.center,
//                           ),
//                           Text(
//                             customer['transactions']['oldTrx'][i]['time'],
//                             style: TextStyle(fontSize: 18.0),textAlign: TextAlign.center,
//                           ),
//                         ]),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

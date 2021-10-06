import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Tests/data.dart';

//import 'package:provider/provider.dart';
//import 'package:todoey_flutter/screens/tasks_screen.dart';
//import 'Tests/provider_test_screen.dart';
//import 'Tests/data.dart';
//
void main() =>
    runApp(ChangeNotifierProvider(create: (context) => Data(), child: MyApp()));
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: TasksScreen(),
////      home: Thing1(),
//      theme: ThemeData(
////        inputDecorationTheme: InputDecorationTheme(
////          border: OutlineInputBorder(
////            borderSide: BorderSide(color: Colors.red, width: 2.0),
//////            borderRadius: BorderRadius.all(Radius.circular(32.0)),
////          ),
////        ),
//        unselectedWidgetColor:Colors.cyan,
//          floatingActionButtonTheme:
//              FloatingActionButtonThemeData(backgroundColor: Colors.cyan, )),
//    );
//  }
//}
//

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(30, 35),
                  bottomLeft: Radius.elliptical(30, 35))),
          title: Text(
            'provider test'.toUpperCase(),
            style: TextStyle(
              color: Colors.pink[50],
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  PinkBox(
                    child: Center(
                        child: PurpleBox(
                          child: Center(
                              child: YellowBox(
                                child: Center(
                                  child: Text(Provider.of<Data>(context).data),
                                ),
                              )),
                        )),
                  ),
                  PurpleBox(
                    child: Center(
                        child: YellowBox(
                          child: Center(
                              child: TextField(

                                textAlign: TextAlign.center,
                                onChanged: (val){
                                  Provider.of<Data>(context, listen: false)
                                      .changeValue(val);
//TODO : VERY VERY VERY VERY WEIRD BUG THAT HAPPENED AND IT IS THAT WE IF WE SET LISTEN TO FALSE ONLY WE CAN MAKE THE DIFFERENT AND CAN BE SUCCESS FULL AND CHANGE DATA AND THIS IS BECAUSE MAYBE THEY WANT TO MAKE SURE THAT THE TRIGGERING METHOD OF THE THE NOTIFY SHOULD NOT LISTEN TO THE FLOW IT SELF SO IT SHOULD NOT LISTEN TO IT     100 %     WORKS AND TESTED
                                },
                              )
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.pink[100],
      ),
    );
  }
}

class PinkBox extends StatelessWidget {
  PinkBox({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      width: 300,
      height: 300,
      child: child,
    );
  }
}

class PurpleBox extends StatelessWidget {
  PurpleBox({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.purple[300],
          borderRadius: BorderRadius.all(Radius.circular(30))),
      width: 240,
      height: 240,
      child: child,
    );
  }
}

class YellowBox extends StatelessWidget {
  YellowBox({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      width: 180,
      height: 180,
      child: child,
    );
  }
}


//RaisedButton(
//child: Text('man'),
//onPressed: () {
//Provider.of<Data>(context, listen: false)
//    .changeValue('maaaaaan');
//},
//),
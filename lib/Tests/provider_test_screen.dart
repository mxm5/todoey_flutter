//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//import 'data.dart';
//
//
//class Thing1 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return ChangeNotifierProvider<Data>(
//      create: (context) => Data(),
//      child: Container(
//        color: Provider.of<Data>(context).color,
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Border2(backgroundColor: Provider.of<Data>(context).color,ontap: (){
//                //                  () {
//                  print('pressed');
//                  Provider.of<Data>(context).changeColor(Colors.red);
////              },
//              },),
//              Circle3(
//                child: Iko(
//                  color: Colors.blue,
//                ),
//                radius: 100,
//              ),
////          IconButton(icon: Icon(Icons.clear,color: Colors.cyan,), onPressed: null)
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class Border2 extends StatelessWidget {
//  final Color backgroundColor;
//  final Function ontap;
//  Border2({this.backgroundColor = Colors.green,this.ontap});
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Container(
//        width: double.infinity,
//        height: 100,
//        color: backgroundColor,
//        child: Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: GestureDetector(
//              onTap: ontap,
////                  () {
////                print('pressed');
////                Provider.of<Data>(context).changeColor(Colors.orange);
////              },
//              child: Circle3(
//                radius: 15,
//                child: Iko(
//                  color: Colors.red,
//                ),
//              )),
//        ),
//      ),
//    );
//  }
//}
//
//class Circle3 extends StatelessWidget {
//  final Widget child;
//  final double radius;
//
//  Circle3({this.child, this.radius});
//
//  @override
//  Widget build(BuildContext context) {
//    return CircleAvatar(
//      radius: radius,
//      backgroundColor: Colors.white,
//      child: child,
//    );
//  }
//}
//
//class Iko extends StatelessWidget {
//  final Color color;
//
//  Iko({this.color});
//
//  @override
//  Widget build(BuildContext context) {
//    return Icon(
//      Icons.add,
//      color: color,
//    );
//  }
//}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClipRRect extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyClipRRectState();
  }

}
class MyClipRRectState extends State<MyClipRRect> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Clippers'),
    ),
    body: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset('assets/images/login_images.png',width: 200,height: 100,fit: BoxFit.fill,),
      ),
    ),
  );
  }

}
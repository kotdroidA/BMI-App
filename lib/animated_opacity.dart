import 'package:bmi_app/animated_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimationOpacity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return MyAnimationOpacityState();
  }

}
class MyAnimationOpacityState extends State<MyAnimationOpacity>{

  var myOpacity = 1.0;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Animated Opacity'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 1),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,

            ),
            ),
            
            ElevatedButton(onPressed: (){

              if(isVisible){
                myOpacity = 0.0;   // inVisible
                isVisible =false;
              }
              else{
                myOpacity = 1.0; //visible
                isVisible = true;
              }

              setState(() {

              });
            }, child: Text('Close'),

            ),
            
          ],
        ),
      ),

    );

  }

}
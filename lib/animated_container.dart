import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animation extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
  return AnimationState();
  }

}
class AnimationState extends State<Animation>{

  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foo Animations'),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              curve: Curves.slowMiddle,
              decoration:myDecor,
              duration: Duration(seconds: 2),
            ),

            ElevatedButton(onPressed: (){

              // it's toggle

              if(flag){
                _width = 100.0;
                _height = 200.0;
                myDecor = BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.orange,
                );
                
                flag = false;
              }
              else{
                _width = 200.0;
                _height = 100.0;
                myDecor = BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.blueGrey,
                );

                flag = true;
              }
              setState(() {

              });

            }, child: Text('Animate'))
          ],
        ),
      ),
    );
  }

}


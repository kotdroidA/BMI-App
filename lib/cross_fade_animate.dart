import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrossFadeAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return CrossFadeAnimationState();
      }

}

class CrossFadeAnimationState extends State<CrossFadeAnimation> {

  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

      }

  void reload(){
    setState(() {
      if(isFirst) {
        isFirst = false;
      }
      else{
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Fade Animation'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 4),
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.grey.shade400,
              ),

              secondChild: Image.asset('assets/images/login_images.png',
                width: 100,
                height: 100,
              ),

              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,
              crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            
            ElevatedButton(onPressed: (){
              reload();
            }, child: Text('Show')),
          ],
        ),
      ),
    );
  }

}
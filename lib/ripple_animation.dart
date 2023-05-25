import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRippleAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyRippleAnimationState();



}

class MyRippleAnimationState extends State<MyRippleAnimation> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;
  var listRadius = [150.0,200.0,250.0,300.0,350.0];

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync:this,duration: Duration(seconds: 4),lowerBound: 0.3);
    //animation = Tween(begin: 0.0,end: 1.0).animate(animationController);
    animationController.addListener(() {

        setState(() {

        });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ripple Effect'),
      ),
      body:Center(
        child: Stack(
          alignment: Alignment.center,
          children:[
            buildMyContainer(listRadius[0]),
            buildMyContainer(listRadius[1]),
            buildMyContainer(listRadius[2]),
            buildMyContainer(listRadius[3]),
            buildMyContainer(listRadius[4]),
            Icon(Icons.add_call, color: Colors.white,size: 34,),

        ]
        ),
      ) ,
    );
  }

  Widget buildMyContainer(radius){

    return Container(
      width: radius*animationController.value,
      height: radius*animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - animationController.value),
      ),
    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheTweenAnimation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TheTweenAnimationState();

}
class TheTweenAnimationState extends State<TheTweenAnimation> with SingleTickerProviderStateMixin{
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync:this,duration: Duration(seconds: 4) );
    animation = Tween(begin: 0.0,end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.purpleAccent,end: Colors.deepOrange).animate(animationController);
    animationController.addListener(() {
     print(animation.value);
     setState(() {

     });

    });

    animationController.forward();

  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Tween Animation'),
     ),
     body: Center(
       child: Container(
         width: animation.value,
         height: animation.value,
         color: colorAnimation.value,
       ),
     ),
   );
  }

}
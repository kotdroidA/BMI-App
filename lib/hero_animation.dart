import 'package:bmi_app/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient / Hero Animation '),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(

            colors: [
             Colors.deepOrange,
              Colors.purple.shade200 ,
            ],
            begin: FractionalOffset(1.0,0.0),
            end:FractionalOffset(0.0,1.0),
            stops: [0.0,1.0]
          )
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                'assets/images/ic_tree.jpg',
                width: 150,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

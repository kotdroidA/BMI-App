import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLists extends StatelessWidget{
  var arrData = [
    "Pushkar",
    "Sonali",
    "Ritika",
    "Arpita",
    "Madhukar",
    "Nidhi",
    "Anchal",
    "Sahil",
    "Richa",
    "Ruchi",
    "Rishabh",
    "Ritesh",
    "Shilpy",
    "Beauty",
    "Prabhat",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping Lists'),
      ),
      body: Container(
        child: ListView(
          children: [

          ],
        ),
      ),
    );
  }

}
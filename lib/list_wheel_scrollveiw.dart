import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class The3DListPage extends StatefulWidget {
  @override
  State<The3DListPage> createState() => _The3DListPageState();
}

class _The3DListPageState extends State<The3DListPage> {
  var arrIndex = [1,2,3,4,5,6,7,8,9,10,11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3D List'),
      ),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrIndex
            .map((value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Center(child: Text('$value',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: double.infinity,
                  ),
                ))
            .toList(),
      ),
    );
  }
}

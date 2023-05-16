import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLists extends StatelessWidget{
  var arrData = [
    {'name' : 'Pushkar',
      'age': '28',
      'phoneNo' : '01'
    },

    {'name' : 'Sonali',
      'age': '26',
      'phoneNo' : '02'
    },
    {'name' : 'Ritika',
      'age': '25',
      'phoneNo' : '03'
    },
    {'name' : 'Richa',
      'age': '24',
      'phoneNo' : '04'
    },
    {'name' : 'Nidhi',
      'age': '27',
      'phoneNo' : '05'
    },
    {'name' : 'Beauty',
      'age': '26',
      'phoneNo' : '06'
    },
    {'name' : 'Arpita',
      'age': '22',
      'phoneNo' : '07'
    },
    {'name' : 'Anchal',
      'age': '22',
      'phoneNo' : '08'
    },
    {'name' : 'Shilpy',
      'age': '23',
      'phoneNo' : '09'
    },
    {'name' : 'Ruchi',
      'age': '17',
      'phoneNo' : '10'
    },
    {'name' : 'Ved',
      'age': '18',
      'phoneNo' : '11'
    },
    {'name' : 'Madhukar',
      'age': '24',
      'phoneNo' : '12'
    },

    {'name' : 'Rishabh',
      'age': '25',
      'phoneNo' : '13'
    },
    {'name' : 'Ritesh',
      'age': '24',
      'phoneNo' : '14'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping Lists'),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['phoneNo'].toString()),
              trailing: CircleAvatar(child: Text(value['age'].toString())),
            );

          }).toList()
        ),
      ),
    );
  }

}
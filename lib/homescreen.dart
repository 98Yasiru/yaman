import 'package:flutter/material.dart';
import 'VehicalRent/showroom.dart';

import 'fb.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //--------------------------------------------------------------------------------------------------------------------------------------------
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed:(){



        }),
        title: Text("Welcome"),
        actions:<Widget> [
          IconButton(icon: Icon(Icons.menu), onPressed:(){



          }),
        ],

      ),
    //--------------------------------------------------------------------------------------------------------------------------------------------
     /* body: Center(
          child: Container(
              child: SfCartesianChart()
          )
      )

      */

      //--------------------------------------------------------------------------------------------------------------------------------------------
    body:Center(
      child: RaisedButton(
        

        child:Text('NEXT Screen',
        style: TextStyle(
        color: Colors.white70,

        ),

        ),
        color: new Color(0xff622F74),
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>Showroom()),
          );
        },
      ),



    ),
//--------------------------------------------------------------------------------------------------------------------------------------------
    );
  }
}

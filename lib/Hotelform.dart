import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'homescreen.dart';
//-----------------------------------------------------------------------------------------------------------------


//----------------------------------------------------------------------------------------------------------------------


class Hotelform extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//------------------------------------------------------------------------------------------------------------------------

class _MyHomePageState extends State<Hotelform> {

  bool signin = true;

  TextEditingController namectrl,emailctrl,passctrl;

  bool processing = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namectrl = new TextEditingController();
    emailctrl = new TextEditingController();
    passctrl = new TextEditingController();

  }
//--------------------------------------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Icon(Icons.account_circle,size: 200,color: Colors.green,),

            boxUi(),
          ],
        )
    );
  }


//-----------------------------------------------------------------------------------------------------------------------
  void changeState(){
    if(signin){
      setState(() {
        signin = false;

      });
    }else
      setState(() {
        signin = true;

      });
  }
  void registerUser() async{

    setState(() {
      processing = true;
    });
    var url = "https://ceb-selfcare.000webhostapp.com/signup.php";


    var data = {
      "email":emailctrl.text,
      "name":namectrl.text,
      "pass":passctrl.text,
    };

    var res = await http.post(url,body:data);

    if(jsonDecode(res.body) == "account already exists"){
      Fluttertoast.showToast(msg: "account exists, Please login",toastLength: Toast.LENGTH_SHORT);

    }else{

      if(jsonDecode(res.body) == "true"){
        Fluttertoast.showToast(msg: "account created",toastLength: Toast.LENGTH_SHORT);
      }else{
        Fluttertoast.showToast(msg: "error",toastLength: Toast.LENGTH_SHORT);
      }
    }
    setState(() {
      processing = false;
    });
  }

  Widget boxUi(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                FlatButton(
                  onPressed:() => changeState(),
                  child: Text('SIGN UP',
                    style: GoogleFonts.varelaRound(
                      color: signin != true ? Colors.redAccent : Colors.grey,
                      fontSize: 25.0,fontWeight: FontWeight.bold,
                    ),),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }

  Widget signUpUi(){
    return Column(
      children: <Widget>[

        TextField(
          controller: namectrl,
          decoration: InputDecoration(prefixIcon: Icon(Icons.account_box,),
              hintText: 'name'),
        ),

        TextField(
          controller: emailctrl,
          decoration: InputDecoration(prefixIcon: Icon(Icons.account_box,),
              hintText: 'email'),
        ),


        TextField(
          controller: passctrl,
          decoration: InputDecoration(prefixIcon: Icon(Icons.lock,),
              hintText: 'pass'),
        ),

        SizedBox(height: 10.0,),

        MaterialButton(
            onPressed:() => registerUser(),
            child: processing == false ? Text('Sign Up',
              style: GoogleFonts.varelaRound(fontSize: 18.0,
                  color: Colors.blue),) : CircularProgressIndicator(backgroundColor: Colors.red)
        ),

      ],
    );
  }



}

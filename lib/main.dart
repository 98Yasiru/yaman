import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'homescreen.dart';
import 'book.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: MyHomePage(),
      ),
      appBar: AppBar(
        title: Text('Travelasia-2021'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
          ),
        ),
        elevation: 3,
      ),
      resizeToAvoidBottomInset: false,
    ),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool signin = true;

  TextEditingController namectrl, emailctrl, passctrl;

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
            Icon(
              Icons.account_circle,
              size: 200,
              color: Colors.white,
            ),
            boxUi(),
          ],
        ));
  }

//-----------------------------------------------------------------------------------------------------------------------
  void changeState() {
    if (signin) {
      setState(() {
        signin = false;
      });
    } else
      setState(() {
        signin = true;
      });
  }

  void registerUser() async {
    setState(() {
      processing = true;
    });
    var url = "https://travellapp.000webhostapp.com/travelapp/signup.php";

    var data = {
      "email": emailctrl.text,
      "name": namectrl.text,
      "pass": passctrl.text,
    };

    var res = await http.post(url, body: data);

    if (jsonDecode(res.body) == "account already exists") {
      Fluttertoast.showToast(
          msg: "account exists, Please login", toastLength: Toast.LENGTH_SHORT);
    } else {
      if (jsonDecode(res.body) == "true") {
        Fluttertoast.showToast(
            msg: "account created", toastLength: Toast.LENGTH_SHORT);
      } else {
        Fluttertoast.showToast(msg: "error", toastLength: Toast.LENGTH_SHORT);
      }
    }
    setState(() {
      processing = false;
    });
  }

//-------------------------------------------------------------------------------------------------------------------------------------------------
  void userSignIn() async {
    setState(() {
      processing = true;
    });
    var url = "https://travellapp.000webhostapp.com/travelapp/signin.php";
    var data = {
      "email": emailctrl.text,
      "pass": passctrl.text,
    };

    var res = await http.post(url, body: data);

    if (jsonDecode(res.body) == "dont have an account") {
      Fluttertoast.showToast(
          msg: "dont have an account,Create an account",
          toastLength: Toast.LENGTH_SHORT);
    } else {
      if (jsonDecode(res.body) == "false") {
        Fluttertoast.showToast(
            msg: "incorrect password", toastLength: Toast.LENGTH_SHORT);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => book()),
        );
      } else {
        // print(jsonDecode(res.body));
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()),);
      }
    }

    setState(() {
      processing = false;
    });
  }

  Widget boxUi() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: () => changeState(),
                  child: Text(
                    'SIGN IN',
                    style: GoogleFonts.varelaRound(
                      color: signin == true ? Colors.redAccent : Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () => changeState(),
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.varelaRound(
                      color: signin != true ? Colors.redAccent : Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            signin == true ? signInUi() : signUpUi(),
          ],
        ),
      ),
    );
  }

  Widget signInUi() {
    return Column(
      children: <Widget>[
        TextField(
          controller: emailctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_box,
              ),
              hintText: 'Enter your email'),
        ),
        TextField(
          controller: passctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              hintText: 'Enetr your password'),
        ),
        SizedBox(
          height: 10.0,
        ),
        MaterialButton(
            onPressed: () => userSignIn(),
            child: processing == false
                ? Text(
                    'Sign In',
                    style: GoogleFonts.varelaRound(
                        fontSize: 18.0, color: Colors.blue),
                  )
                : CircularProgressIndicator(
                    backgroundColor: Colors.red,
                  )),
      ],
    );
  }

  Widget signUpUi() {
    return Column(
      children: <Widget>[
        TextField(
          controller: namectrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_box,
              ),
              hintText: 'Enter your name'),
        ),
        TextField(
          controller: emailctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_box,
              ),
              hintText: 'Enter your email'),
        ),
        TextField(
          controller: passctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              hintText: 'Enter your password'),
        ),
        SizedBox(
          height: 10.0,
        ),
        MaterialButton(
            onPressed: () => registerUser(),
            child: processing == false
                ? Text(
                    'Sign Up',
                    style: GoogleFonts.varelaRound(
                        fontSize: 18.0, color: Colors.blue),
                  )
                : CircularProgressIndicator(backgroundColor: Colors.red)),
      ],
    );
  }
}

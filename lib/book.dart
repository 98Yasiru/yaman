import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'campItem/showcampItems.dart';
import 'hotel.dart';
import 'VehicalRent/showroom.dart';
import 'campItem/showcampItems.dart';

class book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 310,
                  decoration: BoxDecoration(
                      boxShadow: [
                        //background color of box
                        BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 25.0, // soften the shadow
                          spreadRadius: 5.0, //extend the shadow
                          offset: Offset(
                            5.0, // Move to right 10  horizontally
                            5.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.purple, Colors.blue])),
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back_ios,
                                  color: Colors.white, size: 19),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: IconButton(
                              icon: Icon(Icons.list_alt_rounded,
                                  color: Colors.white, size: 26),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 0.0),
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.white)),
                                    onPressed: () {},
                                    color: Colors.transparent,
                                    textColor: Colors.white,
                                    child: Row(
                                      children: [
                                        Icon(Icons.home, size: 18),
                                        SizedBox(width: 5),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4.0),
                                          child: Text(
                                            "Hotels".toUpperCase(),
                                            style: GoogleFonts.cinzel(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 10.0),
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.transparent)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Showitems(),
                                        ),
                                      );
                                    },
                                    color: Colors.transparent,
                                    textColor: Colors.white,
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_shopping_cart_outlined,
                                            size: 18),
                                        SizedBox(width: 5),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4.0),
                                          child: Text(
                                            "camp Items".toUpperCase(),
                                            style: GoogleFonts.cinzel(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 10.0),
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.transparent)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Showroom(),
                                        ),
                                      );
                                    },
                                    color: Colors.transparent,
                                    textColor: Colors.white,
                                    child: Row(
                                      children: [
                                        Icon(Icons.electric_car, size: 18),
                                        SizedBox(width: 5),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 1.0),
                                          child: Text(
                                            "Rent Car".toUpperCase(),
                                            style: GoogleFonts.cinzel(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ])),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 22.0),
                            child: Text(
                              'Plan A Trip',
                              style: GoogleFonts.cinzel(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40, top: 2.0, bottom: 5),
                            child: Text(
                              'Where Do You Want To Stay?',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  letterSpacing: 0,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 40.0, right: 40, top: 20),
                          child: TextField(
                            textAlign: TextAlign.center,
                            minLines: 1,
                            maxLines: 1,
                            autocorrect: false,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.location_on),
                              hintText: 'Search Your Destination',
                              hintStyle: GoogleFonts.lato(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              filled: true,
                              fillColor: Colors.grey[200],
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 28),
                        child: Text(
                          'IN Sri Lanka',
                          style: GoogleFonts.cinzel(
                              color: Colors.black,
                              letterSpacing: 0,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          '300+ Hotels Found',
                          style: GoogleFonts.lato(
                              color: Colors.grey[600],
                              letterSpacing: 0,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28.0),
                    child: Text(
                      'MORE',
                      style: GoogleFonts.lato(
                          color: Colors.grey[600],
                          letterSpacing: 0,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => hotel(),
                    ),
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(5.0),
                          bottomRight: const Radius.circular(5.0),
                          topLeft: const Radius.circular(5.0),
                          topRight: const Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              0, // Move to right 10  horizontally
                              4, // Move to bottom 10 Vertically
                            ),
                          )
                        ]),
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(5.0),
                            bottomRight: const Radius.circular(5.0),
                            topLeft: const Radius.circular(5.0),
                            topRight: const Radius.circular(5.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              blurRadius: 10.0, // soften the shadow
                              spreadRadius: 2.0, //extend the shadow
                              offset: Offset(
                                0, // Move to right 10  horizontally
                                4, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://media.nomadicmatt.com/hotelreview1a.jpg',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(
                            'Shangri-La Hotel Colombo',
                            style: GoogleFonts.cinzel(
                                color: Colors.black,
                                letterSpacing: 0,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Twitter_Verified_Badge.svg/1200px-Twitter_Verified_Badge.svg.png',
                              height: 16)
                        ],
                      ),
                      subtitle: Text('Rating : 4.5/5'),
                      trailing: Icon(Icons.phone_forwarded_outlined),
                      isThreeLine: false,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(5.0),
                        bottomRight: const Radius.circular(5.0),
                        topLeft: const Radius.circular(5.0),
                        topRight: const Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            0, // Move to right 10  horizontally
                            4, // Move to bottom 10 Vertically
                          ),
                        )
                      ]),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(5.0),
                          bottomRight: const Radius.circular(5.0),
                          topLeft: const Radius.circular(5.0),
                          topRight: const Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              0, // Move to right 10  horizontally
                              4, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg?width=2119&height=1195&fit=crop&format=pjpg&auto=webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Taj Samudra Colombo',
                          style: GoogleFonts.cinzel(
                              color: Colors.black,
                              letterSpacing: 0,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Twitter_Verified_Badge.svg/1200px-Twitter_Verified_Badge.svg.png',
                            height: 16)
                      ],
                    ),
                    subtitle: Text('Rating : 4.3/5'),
                    trailing: Icon(Icons.phone_forwarded_outlined),
                    isThreeLine: false,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(5.0),
                        bottomRight: const Radius.circular(5.0),
                        topLeft: const Radius.circular(5.0),
                        topRight: const Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            0, // Move to right 10  horizontally
                            4, // Move to bottom 10 Vertically
                          ),
                        )
                      ]),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(5.0),
                          bottomRight: const Radius.circular(5.0),
                          topLeft: const Radius.circular(5.0),
                          topRight: const Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              0, // Move to right 10  horizontally
                              4, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkYShyjCffkVCgE6YP0KzkRKbzIAzgKnpJig&usqp=CAU'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Marino Beach Colombo',
                          style: GoogleFonts.cinzel(
                              color: Colors.black,
                              letterSpacing: 0,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Twitter_Verified_Badge.svg/1200px-Twitter_Verified_Badge.svg.png',
                            height: 16)
                      ],
                    ),
                    subtitle: Text('Rating : 4.1/5'),
                    trailing: Icon(Icons.phone_forwarded_outlined),
                    isThreeLine: false,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 28),
                        child: Text(
                          'Trending',
                          style: GoogleFonts.cinzel(
                              color: Colors.black,
                              letterSpacing: 0,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          '12 Locations',
                          style: GoogleFonts.lato(
                              color: Colors.grey[600],
                              letterSpacing: 0,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28.0),
                    child: Text(
                      'MORE',
                      style: GoogleFonts.lato(
                          color: Colors.grey[600],
                          letterSpacing: 0,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Container(
                  height: 180,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 28.0, top: 20, bottom: 10),
                            child: Container(
                              height: 110,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[500],
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 2.0, //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      4, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://esp365.000webhostapp.com/images/Lion-Rock2.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text(
                              'Sigiriya',
                              style: GoogleFonts.cinzel(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 28.0, top: 20, bottom: 10),
                            child: Container(
                              height: 110,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[500],
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 2.0, //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      4, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://esp365.000webhostapp.com/images/Webp.net-resizeimage.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text(
                              'Hikkaduwa Beach',
                              style: GoogleFonts.cinzel(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 28.0, top: 20, bottom: 10),
                            child: Container(
                              height: 110,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[500],
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 2.0, //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      4, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://esp365.000webhostapp.com/images/Webpfdsf.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text(
                              'Kandy',
                              style: GoogleFonts.cinzel(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 28.0, top: 20, bottom: 10),
                            child: Container(
                              height: 110,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[500],
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 2.0, //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      4, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://esp365.000webhostapp.com/images/nilaweli.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text(
                              'Nilaweli Beach',
                              style: GoogleFonts.cinzel(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 28.0, top: 20, bottom: 10),
                            child: Container(
                              height: 110,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[500],
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 2.0, //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      4, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://esp365.000webhostapp.com/images/cvcx.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text(
                              'Anuradhapura',
                              style: GoogleFonts.cinzel(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 28.0, top: 20, bottom: 10),
                            child: Container(
                              height: 110,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0),
                                  topLeft: const Radius.circular(10.0),
                                  topRight: const Radius.circular(10.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[500],
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 2.0, //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      4, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://esp365.000webhostapp.com/images/svvvc.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text(
                              'Ella',
                              style: GoogleFonts.cinzel(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}

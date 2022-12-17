import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FormScreen.dart';
import'order/order.dart';

class hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 19),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Detail',
          style: GoogleFonts.lato(
              color: Colors.grey[700],
              fontSize: 20,
              fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
        actions: [
          Icon(
            Icons.person,
            color: Colors.black87,
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 220,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(5.0),
                        bottomRight: const Radius.circular(5.0),
                        topLeft: const Radius.circular(5.0),
                        topRight: const Radius.circular(5.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkYShyjCffkVCgE6YP0KzkRKbzIAzgKnpJig&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                itemCount: 3,
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 0),
                  child: Text(
                    'Shangri-La Hotel Colombo',
                    style: GoogleFonts.cinzel(
                        color: Colors.black,
                        letterSpacing: 0,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 28.0),
                    child: Icon(Icons.bookmark_border_outlined)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 10),
                    child: Row(
                      children: [
                        Image.network(
                            'https://www.freepnglogos.com/uploads/star-png/star-vector-png-transparent-image-pngpix-21.png',
                            height: 10),
                        SizedBox(width: 5),
                        Image.network(
                            'https://www.freepnglogos.com/uploads/star-png/star-vector-png-transparent-image-pngpix-21.png',
                            height: 10),
                        SizedBox(width: 5),
                        Image.network(
                            'https://www.freepnglogos.com/uploads/star-png/star-vector-png-transparent-image-pngpix-21.png',
                            height: 10),
                        SizedBox(width: 5),
                        Image.network(
                            'https://www.freepnglogos.com/uploads/star-png/star-vector-png-transparent-image-pngpix-21.png',
                            height: 10),
                        SizedBox(width: 5),
                        Image.network(
                            'https://purepng.com/public/uploads/large/purepng.com-grey-starstargeometricallydecagonconcavestardomclipartblackgrey-1421526502793oblca.png',
                            height: 10),
                        SizedBox(width: 10),
                        Text(
                          '4.2',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '(430) Reviews',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ],
            ),
            SizedBox(height: 10),
            Container(
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 0.0),
                        child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(5.0),
                                bottomRight: const Radius.circular(5.0),
                                topLeft: const Radius.circular(5.0),
                                topRight: const Radius.circular(5.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0, // soften the shadow
                                  spreadRadius: 2.0, //extend the shadow
                                  offset: Offset(
                                    0, // Move to right 10  horizontally
                                    2, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 0.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0.0, right: 5),
                                    child: Icon(
                                      Icons.bookmark_border_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  Text(
                                    'Details',
                                    style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 0.0),
                        child: Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.pink[300],
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(5.0),
                                bottomRight: const Radius.circular(5.0),
                                topLeft: const Radius.circular(5.0),
                                topRight: const Radius.circular(5.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0, // soften the shadow
                                  spreadRadius: 2.0, //extend the shadow
                                  offset: Offset(
                                    0, // Move to right 10  horizontally
                                    2, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 0.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0.0, right: 4),
                                    child: Icon(
                                      Icons.book_online_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  Text(
                                    'Booking',
                                    style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 0.0),
                        child: Container(
                            height: 34,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.pink[300],
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(5.0),
                                bottomRight: const Radius.circular(5.0),
                                topLeft: const Radius.circular(5.0),
                                topRight: const Radius.circular(5.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0, // soften the shadow
                                  spreadRadius: 2.0, //extend the shadow
                                  offset: Offset(
                                    0, // Move to right 10  horizontally
                                    2, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 0.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 3.0, right: 5),
                                    child: Icon(
                                      Icons.rate_review,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  Text(
                                    'Reviews',
                                    style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ])),
            Padding(
              padding: const EdgeInsets.only(
                  left: 28.0, right: 28, top: 18, bottom: 28),
              child: Center(
                child: Expanded(
                  child: Text(
                    'Shangri-La Hotel, Colombo presents a new level of luxury in the city. Located in the heart of the business and entertainment district, the hotel offers the various collection of guestrooms with stunning views of the Indian Ocean, Beira Lake or cityscape. The property has 4 innovative restaurants and bars, and it is Colombo’s largest and stylish event spaces.Set to be the city’s dining destination, Shangri-La Hotel, Colombo’s restaurants and bars include Capital Bar & Grill, presenting tasty steaks and seafood grills with a wide selection of whiskey. Kaema Sutra is a new-age Sri Lankan bar and restaurant. Sapphyr Lounge is a place to meet with friends and family over simple indulgences. There is a Pool Bar overlooking the Indian Ocean and it is perfect for light refreshments. The hotel also offers direct access to the most extensive international shopping mall in Sri Lanka, Shangri-La’s own One Galle Face Mall.Chi, The Spa is a place of personal peace and enchantment offering holistic therapies for the body, mind and soul. The Health Club features state-of-the-art fitness equipment and personal trainers to ensure you stay true to your fitness regime when away from home.Daily buffet breakfast and dinner are served at either Capital Bar & Grill or Kaema Sutra.Co-nnect, Shangri-La Hotel, Colombo’s stylish, new co-working space offers a versatile environment to meet, work and create. These exclusive spaces include private offices, meeting rooms, work pods and individual work stations, and is an inspired alternative to working in a traditional office setting.Couples in particular like the location – they rated it 9.3 for a two-person trip.We speak your language! ',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        letterSpacing: 0,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 0.0),
              child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(5.0),
                      bottomRight: const Radius.circular(5.0),
                      topLeft: const Radius.circular(5.0),
                      topRight: const Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow[800],
                        blurRadius: 2.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          2, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.room_outlined,
                            color: Colors.white, size: 20),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 6,bottom:1 ),
                          child: RaisedButton(
                          child: Text(
                            'Book Room',
                            style: GoogleFonts.cinzel(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,

                          ),
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>Home()),//methana poddak balanna
                              );
                            },
                        ),
                        ),

                      ],

                    ),

                  )



              ),

            ),
          ],
        ),
      ),
    );
  }
}

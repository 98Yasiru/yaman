import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;

  NavigationItem(this.iconData);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.calendar_today),
    NavigationItem(Icons.notifications),
    NavigationItem(Icons.person),
  ];
}

class Car {

  String brand;
  String model;
  double price;
  String condition;
  List<String> images;

  Car(this.brand, this.model, this.price, this.condition, this.images);

}

List<Car> getCarList(){
  return <Car>[
    Car(
      "Out door small Tents",
      "OSAKA",
      2580,
      "Weekly",
      [
        "assets/images/—Pngtree—tent illustration open tent outdoor_3880881.png",
        "assets/images/—Pngtree—hand drawn tent green tent_3903445.png",
        //"assets/images/land_rover_2.png",
      ],
    ),
    Car(
      "4-person Camp Tent",
      "C4",
      3580,
      "Monthly",
      [
        "assets/images/5a62107deace967f8e026a25.png",
      ],
    ),
    Car(
      "Family camp Tent",
      "GTR",
      1100,
      "Daily",
      [
        "assets/images/PinClipart.com_clip-art-chairs_503374.png",
        "assets/images/PinClipart.com_patio-clipart_5654777.png",
        "assets/images/citroen_2.png",
      ],
    ),
    Car(
      "fordable chai",
      "maxis",
      2200,
      "Monthly",
      [
        "assets/images/PinClipart.com_clip-art-chairs_503374.png",
        "assets/images/PinClipart.com_patio-clipart_5654777.png",
        "assets/images/citroen_2.png",
      ],
    ),
    Car(
      "BIG Tea bottel",
      "Gask-Flask",
      3400,
      "Weekly",
      [
        "assets/images/PinClipart.com_clip-art-chairs_503374.png",
        "assets/images/PinClipart.com_patio-clipart_5654777.png",
        "assets/images/citroen_2.png",
      ],
    ),
    Car(
      "Rubber Bed",
      "Damro",
      4200,
      "Weekly",
      [
        "assets/images/PinClipart.com_clip-art-chairs_503374.png",
        "assets/images/PinClipart.com_patio-clipart_5654777.png",
        "assets/images/citroen_2.png",
      ],
    ),
    Car(
      "Arrow",
      "Focus",
      2300,
      "Weekly",
      [
        "assets/images/PinClipart.com_clip-art-chairs_503374.png",
        "assets/images/PinClipart.com_patio-clipart_5654777.png",
        "assets/images/citroen_2.png",
      ],
    ),
    Car(
      "Axe",
      "Bonnie",
      1450,
      "Weekly",
      [
        "assets/images/PinClipart.com_clip-art-chairs_503374.png",
        "assets/images/PinClipart.com_patio-clipart_5654777.png",
        "assets/images/citroen_2.png",
      ],
    ),
    Car(
      "12-persons Tent",
      "Nike",
      900,
      "Daily",
      [
        "assets/images/5a621075eace967f8e026a24.png",
      ],
    ),
    Car(
      "Camp Chair",
      "Reebok",
      1200,
      "Monthly",
      [
        "assets/images/PinClipart.com_clip-art-chairs_503374.png",
        "assets/images/PinClipart.com_patio-clipart_5654777.png",
        "assets/images/citroen_2.png",
      ],
    ),
  ];
}

class Dealer {

  String name;
  int offers;
  String image;


  Dealer(this.name, this.offers, this.image);

}

List<Dealer> getDealerList(){
  return <Dealer>[
    Dealer(
      "Reebok",
      174,
      "assets/images/reebok-logo-png-7033-64x64.ico",
    ),
    Dealer(
      "Nike",
      126,
      "assets/images/nike-logo-25-64x64.ico",
    ),
    Dealer(
      "adidas",
      89,
      "assets/images/adidas-logo-png-2380-64x64.ico",
    ),
  ];
}

class Filter {

  String name;

  Filter(this.name);

}

List<Filter> getFilterList(){
  return <Filter>[
    Filter("Best Match"),
    Filter("Highest Price"),
    Filter("Lowest Price"),
  ];
}
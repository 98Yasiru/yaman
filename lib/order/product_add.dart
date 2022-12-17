import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductAdd extends StatefulWidget {
  @override
  _ProductAddState createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {

  // TextEditingController controllerID = new TextEditingController();
  TextEditingController controllerName = new TextEditingController();
  TextEditingController controllerPrice = new TextEditingController();
  TextEditingController controllerStock = new TextEditingController();

  addProduct() {
    var postRoute = "https://ceb-selfcare.000webhostapp.com/tuk/products_post.php";
    http.post(postRoute, body: {
      "name": controllerName.text,
      "price": controllerPrice.text,
      "stock": controllerStock.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New ORDER"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(

          children: <Widget>[
            Column(

              children: <Widget>[
                // TextField(
                //   decoration: InputDecoration(
                //       hintText: "Product ID", labelText: "Product ID"),
                // ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Order Name", labelText: "Order Name"),
                      controller: controllerName,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Order Description", labelText: "Order Description"),
                      controller: controllerPrice,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Order Date", labelText: "Order Date"),
                      controller: controllerStock,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text("Add Order"),
                  color: Colors.white,
                  onPressed: () {
                    addProduct();
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

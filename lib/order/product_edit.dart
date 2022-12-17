import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './order.dart';

class ProductEdit extends StatefulWidget {
  final List products;
  final int index;

  ProductEdit({this.products, this.index});

  @override
  _ProductEditState createState() => _ProductEditState();
}

class _ProductEditState extends State<ProductEdit> {
  TextEditingController controllerName;
  TextEditingController controllerPrice;
  TextEditingController controllerStock;

  editProduct() {
    var url = 'https://ceb-selfcare.000webhostapp.com/tuk/products_edit.php';
    http.post(url, body: {
      "id": widget.products[widget.index]["id"],
      "name": controllerName.text,
      "price": controllerPrice.text,
      "stock": controllerStock.text
    });
  }

  @override
  void initState() {
    controllerName =
        TextEditingController(text: widget.products[widget.index]["name"]);
    controllerPrice =
        TextEditingController(text: widget.products[widget.index]["price"]);
    controllerStock =
        TextEditingController(text: widget.products[widget.index]["stock"]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Edit"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
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
                      hintText: "Order Date", labelText: "Order date"),
                  controller: controllerStock,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text("Edit Order"),
                  color: Colors.yellowAccent,
                  onPressed: () {
                    editProduct();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Home();
                      },
                    ));
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

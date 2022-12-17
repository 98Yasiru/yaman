import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import './product_edit.dart';
import './order.dart';

class ProductDetail extends StatefulWidget {
  List products;
  int index;

  ProductDetail({this.index, this.products});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  deleteProduct() {
    var url = 'https://ceb-selfcare.000webhostapp.com/tuk/products_delete.php';
    http.post(url, body: {
      'id': widget.products[widget.index]["id"]
    });
  }

  void confirm() {
    AlertDialog confirm = AlertDialog(
      content: Text(
          "Are you sure you want to delete ${widget.products[widget.index]["name"]}?"),
      actions: <Widget>[
        RaisedButton(
          child: Text(
            'Accept',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.red,
          onPressed: ()  {
            deleteProduct();
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return Home();
              })
            );
          }
        ),
        RaisedButton(
          child: Text("Cancel"),
          color: Colors.white70,
          onPressed: () => Navigator.pop(context)
        )
      ],
    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.products[widget.index]["name"]}"),
        backgroundColor: Colors.indigo[900],
      ),
      body: Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                Text(
                  widget.products[widget.index]["name"],
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  "Order Id: ${widget.products[widget.index]["id"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Order Description: ${widget.products[widget.index]["price"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Order Date: ${widget.products[widget.index]["stock"]}",
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Edit Order"),
                      color: Colors.yellowAccent,
                      onPressed: () {
                        return Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => ProductEdit(
                                  products: widget.products,
                                  index: widget.index,
                                )));
                      },
                    ),
                    RaisedButton(
                      child: Text("Delete Order"),
                      color: Colors.red,
                      onPressed: () => confirm(),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

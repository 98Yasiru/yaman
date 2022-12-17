import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import './product_detail.dart';
import './product_add.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List> getProducts() async {
    final response = await http.get('https://ceb-selfcare.000webhostapp.com/tuk/products_get.php');
    // debugPrint(response.body);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALL ORDERS YOU DONE '),
        backgroundColor: Colors.redAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) {
            return ProductAdd();
          },
        )),
      ),
      body: FutureBuilder<List>(
        future: getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ProductList(products: snapshot.data)
              : Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final List products;
  ProductList({this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products == null ? 0 : products.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            child: Card(
              child: ListTile(
                title: Text(products[i]["name"]),
                leading: Icon(Icons.widgets),
                subtitle: Text("Order date: ${products[i]['stock']}"),
              ),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => ProductDetail(
                  products: products,
                  index: i,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

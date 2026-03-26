import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"name": "Product 1", "price": "₹100"},
    {"name": "Product 2", "price": "₹200"},
    {"name": "Product 3", "price": "₹300"},
    {"name": "Product 4", "price": "₹400"},
    {"name": "Product 5", "price": "₹500"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView(
        children: products.map((product) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(product["name"]!),
              subtitle: Text(product["price"]!),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
        }).toList(),
      ),
    );
  }
}
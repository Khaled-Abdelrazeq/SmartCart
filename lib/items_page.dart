import 'package:flutter/material.dart';
import 'payment_page.dart';

class ItemsPage extends StatefulWidget {
  final String cartNo;
  ItemsPage({Key key, @required this.cartNo}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ItemsPageState(cartNo);
}

class ItemsPageState extends State<ItemsPage> {
  ItemsPageState(String cartNo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        //elevation: 0.0,
        title: Text(
          'Cart',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
              letterSpacing: 1.5),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0, left: 20, right: 20),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Payment()));
        },
        icon: Icon(
          Icons.payment,
          color: Colors.white,
        ),
        label: Text(
          "PAY NOW",
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}

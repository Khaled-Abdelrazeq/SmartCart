// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './scanner.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
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
        padding: EdgeInsets.only(left: 100, right: 100),
        child: Column(children: <Widget>[
          SizedBox(
            height: 120,
          ),
          Image(
            image: AssetImage('assets/logo.png'),
            height: 150,
          ),
          SizedBox(height: 120),

          // ignore: deprecated_member_use
          RaisedButton(
            elevation: 0.0,
            color: Colors.transparent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Scanner()),
              );
            },
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue[900], Colors.lightBlue[900]]),
                  borderRadius: BorderRadius.circular(6.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF6078ea).withOpacity(.3),
                        offset: Offset(0.0, 8.0),
                        blurRadius: 8.0)
                  ]),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Scan Qr code",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

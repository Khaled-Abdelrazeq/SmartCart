import 'package:flutter/material.dart';
import './splash_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'cart_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyA4nldYkc9h9TabacmST7Wkq_FgP5MRLQ8", // Your apiKey
      appId: "1:727058230262:android:f7df542c351ba9e20175d7", // Your appId
      messagingSenderId: "727058230262", // Your messagingSenderId
      projectId: "smart-cart-fd404", // Your projectId
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}

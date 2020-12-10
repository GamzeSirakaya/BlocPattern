import 'package:blocpattern/Screens/product_list_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) => ProductListScreen(),
        "/cart": (BuildContext context) => CartScreen(),
      },
      initialRoute: "/", // açılış sayfasını belirleme
    );
  }
}

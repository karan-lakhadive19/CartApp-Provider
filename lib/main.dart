import 'package:cartapp/model/cart_model.dart';
import 'package:cartapp/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>CartModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
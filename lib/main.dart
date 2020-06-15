import 'package:flutter/material.dart';
import 'package:fooddelivery/provider.dart';
import 'package:fooddelivery/screens/cartScreen.dart';
import 'package:fooddelivery/screens/companyScreen.dart';
import 'package:fooddelivery/screens/favoriteScreen.dart';
import 'package:fooddelivery/screens/menuScreen.dart';
import 'package:fooddelivery/screens/productScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => AppProvider(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => CompanyScreen(),
        '/menuScreen': (context) => MenuScreen(
              company: ModalRoute.of(context).settings.arguments,
            ),
        '/productScreen': (context) => ProductScreen(
              product: ModalRoute.of(context).settings.arguments,
            ),
        '/favoriteScreen': (context) => FavoriteScreen(),
        '/cartScreen': (context) => CartScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_single_view/screens/home_screen.dart';

void main(List<String> args) {
  runApp(SingleViewApp());
}

class SingleViewApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single View app',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      routes: <String, WidgetBuilder> {
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

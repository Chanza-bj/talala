import 'package:flutter/material.dart';
import 'package:talala/account_page.dart';
import 'package:talala/talala_page.dart';

void main() => runApp(new AmasampoApp());

class AmasampoApp extends StatelessWidget {
  
  @override
 Widget build(BuildContext context){
  
    return new MaterialApp(
      title: "Talala",
        theme: new ThemeData(
          primarySwatch: Colors.blueGrey
        ),
        home: new TalalaPage(),
        routes: <String, WidgetBuilder> {
          "/AccountPage": (BuildContext context) => new AccountPage(),
        },
    );
 }
}
  
  
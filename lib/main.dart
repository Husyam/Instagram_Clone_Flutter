import 'package:flutter/material.dart';
import 'package:hometask_instagram/home.dart';
import 'package:hometask_instagram/account.dart';
import 'package:hometask_instagram/tes.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("header aplikasi"),
        ),
        body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text("Text Boddy"),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

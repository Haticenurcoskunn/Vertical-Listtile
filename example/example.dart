import 'package:flutter/material.dart';
import 'package:vertical_listtile/vertical_listtile.dart';

void main() {
  runApp(const MyApp());
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
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerticalListtile(
        backgroundcolor: Colors.grey.shade300,
        borderRadius: 20,
        containerHeight: 350,
        containerWidth: 200,
        startWidget: myStartWidget(),
        centerWidget: myCenterWidget(),
        finishWidget: myFinishWidget(),
      ),
    );
  }
}

Image myStartWidget() {
  return Image.network(
    "https://i.ytimg.com/vi/iwMqsKDTdQ0/maxresdefault.jpg",
    width: 150,
    height: 200,
  );
}

Text myCenterWidget() => Text(
      "HELLO GUYS I'M PLU ",
      style: TextStyle(fontSize: 20, color: Colors.red.shade300),
    );
Icon myFinishWidget() => Icon(
      Icons.add_reaction_sharp,
      size: 30,
      color: Colors.red.shade300,
    );

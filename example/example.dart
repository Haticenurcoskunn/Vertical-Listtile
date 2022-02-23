// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

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
      home: VerticalListtile(
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

class VerticalListtile extends StatefulWidget {
  final Color backgroundcolor;
  final double borderRadius;
  final double containerWidth;
  final double containerHeight;
  final Widget startWidget;
  final Widget centerWidget;
  final Widget finishWidget;

  const VerticalListtile({
    required this.backgroundcolor,
    required this.borderRadius,
    required this.containerWidth,
    required this.containerHeight,
    required this.startWidget,
    required this.centerWidget,
    required this.finishWidget,
  });

  @override
  State<VerticalListtile> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<VerticalListtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: widget.containerWidth,
          height: widget.containerHeight,
          decoration: BoxDecoration(
            color: widget.backgroundcolor,
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.startWidget,
              widget.centerWidget,
              widget.finishWidget
            ],
          ),
        ),
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

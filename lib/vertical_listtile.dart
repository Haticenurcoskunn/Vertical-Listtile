import 'package:flutter/material.dart';

class VerticalListtile extends StatefulWidget {
  final Color backgroundcolor;
  final double borderRadius;
  final double containerWidth;
  final double containerHeight;
  final Widget startWidget;
  final Widget centerWidget;
  final Widget finishWidget;

  VerticalListtile({
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

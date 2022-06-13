import 'package:flutter/material.dart';
class ReuseContainer extends StatelessWidget {
  ReuseContainer({@required this.color, this.cardChild});
  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Color.fromARGB(255, 82, 148, 84)),
          color: color, borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
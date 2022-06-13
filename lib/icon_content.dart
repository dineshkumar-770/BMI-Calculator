import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.colour, this.textused, this.iconname});
  final Color colour;
  final String textused;
  final IconData iconname;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconname,
          size: 120.0,
          color: colour,
        ),
        Text(
          textused,
          style: TextStyle(
            fontSize: 16.0,
            color: colour,
          ),
        )
      ],
    );
  }
}

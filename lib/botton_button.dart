import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  static const bottomContainerHeight = 55.0;
  static const bottomColor = Color(0xffD3B62C);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: Color.fromARGB(255, 82, 148, 84))
        ),
          child: Center(
            child: Text(
              'Calculate',
               style: TextStyle(
               fontSize: 25.0,
               color: Colors.white),
               
            ),
          ),
          height: bottomContainerHeight,
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
      );
  }
}

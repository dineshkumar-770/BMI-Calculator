import 'package:flutter/material.dart';

class Middle_Container_Content extends StatefulWidget {

  
  
  @override
  State<Middle_Container_Content> createState() => _Middle_Container_ContentState();
}

class _Middle_Container_ContentState extends State<Middle_Container_Content> {
  double currentSliderValue = 8;
  static const activeCardColor = Colors.black87;
  @override
  Widget build(BuildContext context) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_month_outlined, size: 40,color: activeCardColor,),
                        SizedBox(width: 10.0,),
                        Text(currentSliderValue.round().toString(),
                        style: TextStyle(
                          fontSize: 45.0, color: activeCardColor),
                          ),
                      ],
                    ),
                    Slider(
                      value: currentSliderValue,
                      max: 80,
                      divisions: 80,
                      activeColor: Color.fromARGB(255, 82, 148, 84),
                      inactiveColor: Color.fromARGB(255, 247, 238, 241),
                      //label: currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          currentSliderValue = value;
                        });
                      },
                    ),
                    Text('AGE  (Years)', 
                    style: TextStyle(fontSize: 20.0, color: activeCardColor,),)
                  ],
                );
  }
}
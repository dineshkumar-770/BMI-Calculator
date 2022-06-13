
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reuse_container.dart';
import 'botton_button.dart';
import 'middle_conainter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';
import 'dart:math';

enum Gender{
  male,
  female,
  }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  get bold => null;

  double bmi;//storing number value of bmi or initilaziting the variable bmi.
  String newBMI(int hei, int wei){
      bmi = wei/pow(hei/100, 2);//passing number value of bmi to double bmi variable.
      return bmi.toStringAsFixed(2);//returning converted string value of bmi.
}
 //number value of bmi is required in () of below function for comparision and return a string 
  String interpete(double bmi){
    if(bmi >= 25.0){
      return 'OverWeight';
    }else if(bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
//number value of bmi is required in () of below function for comparision and return a string
  String advice(double bmi){
    if(bmi >= 25){
      return 'You are not in good shape, Do some exercise and work-out';
    }else if(bmi > 18.5){
      return 'Good Job Keep it up, keep maintaining you body';
    }
    else{
      return 'You need to eat a bit more to gain some mass';
    }
  }

  int changeHeight = 0;
  int changeAge = 0;

  static const SelectedColor = Colors.blue;
  static const activeCardColor = Color.fromARGB(255, 82, 148, 84);
  static const inactiveCardColor = Color.fromARGB(255, 48, 46, 85);
  Color malecardcolor = inactiveCardColor;
  Color femalecardcolor = inactiveCardColor;

  void updatecolor(Gender gendertype) => gendertype == Gender.male && malecardcolor == inactiveCardColor?malecardcolor=activeCardColor:malecardcolor=inactiveCardColor;
  void updatecardcolor(Gender gendertype) => gendertype == Gender.female && femalecardcolor == inactiveCardColor?femalecardcolor = activeCardColor:femalecardcolor=inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              fontFamily: bold, fontSize: 30.0, color: Colors.white),
        )),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(children: [
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updatecolor(Gender.male);
                      });
                    },
                    child: ReuseContainer(
                      color: SelectedColor,
                      cardChild: IconContent(
                        colour: malecardcolor,
                        textused: 'MALE',
                        iconname: Icons.male_outlined,
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updatecardcolor(Gender.female);
                      });
                    },
                    child: ReuseContainer(
                      cardChild: IconContent(
                        colour: femalecardcolor,
                        textused: 'FEMALE',
                        iconname: Icons.female_outlined,
                      ),
                      color: SelectedColor,
                    ),
                  )),
            ]),
          ),
          //middle container
          Expanded(
              flex: 1,
              child: ReuseContainer(
                cardChild: Middle_Container_Content(),
                color: SelectedColor,
              ),
            ),
          //BOTTON CONTAINER 1
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ReuseContainer(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Text('$changeHeight', style: TextStyle(fontSize: 55.0, color: Colors.black87),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onLongPress: () {
                                setState(() {
                                  changeHeight = changeHeight + 50;
                                });
                              },
                              onPressed: () {
                                setState(() {
                                  changeHeight = changeHeight + 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 27.0,
                                backgroundColor: inactiveCardColor,
                                child: Icon(Icons.add,size: 50.0,color: activeCardColor,)),
                            ),
      
                            SizedBox(width: 5.0,),
      
                            TextButton(
                              onLongPress: (){
                                setState(() {
                                  changeHeight = changeHeight -20 ;
                                });
                              },
                              onPressed: () {
                                setState(() {
                                  changeHeight = changeHeight - 1;
                                  return changeHeight;
                                });
                              },
                              child: CircleAvatar(
                                radius: 27.0,
                                backgroundColor: inactiveCardColor,
                                child: Icon(FontAwesomeIcons.minus,size: 50.0,color: activeCardColor,)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Text('HEIGHT  (cm)', style: TextStyle(fontSize: 16.0, color: Colors.black87),)
                      ]),
                      color: SelectedColor,
                    ),
                  ),
      
            //BOTTOM CONTAINER 2
            Expanded(
              flex: 1, 
              child: ReuseContainer(
                cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Text('$changeAge', style: TextStyle(fontSize: 55.0, color: Colors.black87),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onLongPress: () {
                                setState(() {
                                  changeAge = changeAge + 20;
                                });
                              },
                              onPressed: () {
                                setState(() {
                                  changeAge = changeAge + 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 27.0,
                                backgroundColor: inactiveCardColor,
                                child: Icon(Icons.add,size: 50.0,color: activeCardColor,)),
                            ),
      
                            SizedBox(width: 5.0,),
      
                            TextButton(
                              onLongPress: (){
                                setState(() {
                                  changeAge=changeAge -20 ;
                                });
                              },
                              onPressed: () {
                                setState(() {
                                  changeAge = changeAge - 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 27.0,
                                backgroundColor: inactiveCardColor,
                                child: Icon(FontAwesomeIcons.minus,size: 50.0,color: activeCardColor,)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Text('WEIGHT  (Kg)', style: TextStyle(fontSize: 16.0, color: Colors.black87),)
                      ]),
                color: SelectedColor,
      
                ),
              ),
            ],
          ),
        ),
        TextButton(
      onPressed: () {
        setState(() {
        Navigator.push(context,
         MaterialPageRoute(builder: (context){
          return result_page(
            //we need to pass these variables to result_page screen, so create same variable on result_page screen
            //give the calculated values to the result_page screen variables.
            bmiResult: newBMI(changeHeight,changeAge), 
            Interpitation: interpete(bmi),
            bmiAdvice: advice(bmi),    
         );
        },
       ),
      );
        });
      }, 
      child: BottomButton())
        ],
      ),
    );
  }
}

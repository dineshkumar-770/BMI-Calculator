import 'package:flutter/material.dart';

class result_page extends StatelessWidget {

  result_page({@required this.bmiResult,@required this.Interpitation, @required this.bmiAdvice});

  final String bmiResult;
  final String bmiAdvice;
  final String Interpitation;

  static const SelectedColor = Color(0xFF1D1E33);
  static const activeCardColor = Color.fromARGB(255, 235, 192, 243);
  static const inactiveCardColor = Color.fromARGB(255, 48, 46, 85);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
        child: Column(
          children:<Widget> [
            SizedBox(
              height: 0.0,
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(0),
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/abc2.jpg'),fit: BoxFit.fill),
                  color: Color.fromARGB(255, 109, 108, 108).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(150, 140, 0, 0),
                  child: Center(
                    child: Text(
                      'YOUR RESULT',textAlign: TextAlign.end,
                       style: TextStyle(color: Colors.teal, fontSize: 35.0, fontWeight: FontWeight.bold
                    ,),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                margin: EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Your BMI is  :',textAlign: TextAlign.center,style: TextStyle(fontSize: 30, color: Colors.black87),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(bmiResult,textAlign: TextAlign.center, style: TextStyle(fontSize: 80.0,color: Colors.black87),),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                          child: Text('kg/m.sq',textAlign: TextAlign.end, style: TextStyle(color: Colors.black87, fontSize: 20),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(Interpitation.toUpperCase(),textAlign: TextAlign.center, 
                      style: TextStyle(
                        fontSize: 25.0, color: Color.fromARGB(255, 82, 148, 84), fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                    SizedBox(height: 10,),
                    Text('Noraml Range 15-25 kg/m.sq',textAlign: TextAlign.center, 
                    style: TextStyle(color: Color.fromARGB(255, 243, 192, 41), fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(height: 10,),
                    Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(bmiAdvice,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,fontSize: 30.0,fontWeight: FontWeight.bold,
                    ),
                 ),
                  ),
                ),
                TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 70, 20, 0),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Color(0xffD3B62C)),
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Re-Calculate', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),)),
              ),
            ),
               ],
              ),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}


import 'dart:math';
import 'package:bmi_app/Calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key? key}) : super(key: key);

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage>
{
  bool isMale = true;
  double height = 155.0;
  double weight = 60.0;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090f20),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 35.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/male.png'),
                              height: 100.0,
                              width: 100.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.purple : Color(0xff333547),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.black38,
                              offset: Offset(0, 8),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/female.png'),
                              height: 100.0,
                              width: 100.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale ? Colors.purple : Color(0xff333547),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.black38,
                              offset: Offset(0, 8),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: Colors.purple,
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      inactiveColor: Colors.black54,
                      onChanged: (value){
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        FloatingActionButton(
                          onPressed: ()
                          {
                            setState(() {
                              height--;
                            });
                          },
                          mini: true,
                          child: Icon(
                            Icons.remove,
                          ),
                          backgroundColor: Colors.purple,
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        FloatingActionButton(
                          onPressed: ()
                          {
                            setState(() {
                              height++;
                            });
                          },
                          mini: true,
                          child: Icon(
                            Icons.add,
                          ),
                          backgroundColor: Colors.purple,
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff333547),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black38,
                      offset: Offset(0, 8),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                                backgroundColor: Colors.purple,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                                backgroundColor: Colors.purple,
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff333547),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black38,
                            offset: Offset(0, 8),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                            ),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                                backgroundColor: Colors.purple,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                                backgroundColor: Colors.purple,
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff333547),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black38,
                            offset: Offset(0, 8),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            color: Colors.purple,
            child: MaterialButton(
              onPressed: ()
              {
                double result = weight / ((height / 100) * (height / 100));
                print(result.toStringAsFixed(1));
                Get.to(ResultPage(
                  age: age,
                  isMale: isMale,
                  result: result,
                ));
              },
              height: 60.0,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
          ),
          SizedBox(height: 8,),
        ],
      ),
    );
  }
}

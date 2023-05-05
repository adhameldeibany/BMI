import 'dart:math';
import 'package:bmi_app/Calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InbodyPage extends StatefulWidget {
  const InbodyPage({Key? key}) : super(key: key);

  @override
  _InbodyPageState createState() => _InbodyPageState();
}

class _InbodyPageState extends State<InbodyPage>
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
          'Inbody Calculator',
          style: TextStyle(
            fontSize: 30.sp,
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
                              height: 80.h,
                              width: 80.w,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.sp,
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
                    width: 20.w,
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
                              height: 80.h,
                              width: 80.w,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.sp,
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
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.sp,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
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
                    SizedBox(height: 0.h,),
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
                          width: 170.w,
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
                    SizedBox(height: 0.h,),
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
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.sp,
                            ),
                          ),
                          SizedBox(height: 8.h,),
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
                                width: 40.w,
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
                    width: 20.w,
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
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.sp,
                            ),
                          ),
                          SizedBox(height: 8.h,),
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
                                width: 40.w,
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
            width: 300.w,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(40)
            ),
            child: MaterialButton(
              onPressed: ()
              {
                double BMI = weight / ((height / 100) * (height / 100));
                print(BMI.toStringAsFixed(1));
                double muscleMass=0,bodyFat=0,totalWater=0,Protein=1.5,idealWeight=0;
                //protin you need (n9)
                Protein = (weight*Protein);
                //protienYouNeed = (weight * 2.75) / 1000;
                DateTime now = DateTime.now();
                if(isMale){
                  muscleMass = (0.407 * weight) + (0.267 * height) - 19.2;
                  bodyFat = (1.2*BMI)+(0.23*age)-16.2;
                  totalWater = 2.447 - (0.09145*age) + (0.1074*height) + (0.3362*weight);
                  idealWeight = 50 + (0.91*height) - 152.4;
                }
                else{
                  muscleMass = (0.252 * weight) + (0.473 * height) - 48.3;
                  bodyFat = (1.2*BMI)+(0.23*age)-5.4;
                  totalWater = -2.097 + (0.1069*height) + (0.2466*weight);
                  idealWeight = 45.5 + (0.91*height) - 152.4;
                }
                Get.to(ResultPage(
                  age: age,
                  isMale: isMale,
                  result: BMI,
                  Protein: Protein,
                  bodyFat: bodyFat,
                  idealWeight: idealWeight,
                  muscleMass: muscleMass,
                  totalWater: totalWater,
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
          SizedBox(height: 8.h,),
        ],
      ),
    );
  }
}

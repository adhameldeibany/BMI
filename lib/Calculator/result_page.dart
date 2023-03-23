import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final double result;
  final bool isMale;
  final int age;

  ResultPage({
    required this.result,
    required this.age,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090f20),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('BMI Result',
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 320,
          width: 320,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black87,
                offset: Offset(0, 20),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text('Gender : ${isMale ? 'Male' : 'Female'}',
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text('Age : $age',
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text('BMI : ${result.toStringAsFixed(1)}',
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xff090f20),
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(0, 5),
                      )
                    ]
                ),
                child: Center(
                  child: Text('Normal : 18.5 - 24.9',
                    style:  TextStyle(
                      color: Colors.green,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
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

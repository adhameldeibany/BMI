import 'package:animate_do/animate_do.dart';
import 'package:bmi_app/Home/bmi_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Get.off(BmiPage());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffd7d5e6),
        body: ElasticInUp(
          duration: Duration(seconds: 3),
          // delay: Duration(seconds: 2),
          child: Image(
            image: AssetImage("assets/splash.png"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        )
    );
  }
}

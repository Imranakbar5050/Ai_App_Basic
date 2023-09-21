import 'package:abr/First_Screen.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
@override
  initState(){
    super.initState();
    _navigatetohome();
  }
_navigatetohome()async{
  await Future.delayed(Duration(microseconds: 1000), () {});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>First_Screen()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              child: Text("splash screen"),

            ),
          ],
        ),
      ),
    );
  }
}

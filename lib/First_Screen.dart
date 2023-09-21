import 'package:abr/Login_Screen.dart';
import 'package:abr/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({super.key});

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("First Screen" , style: TextStyle (fontSize: 25.sp),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text(
                'Welcome  ',

                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40.sp, color: Colors.black),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('To Artifical Intellengence Application In which include all the data Related to AI',
              textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[700],fontSize: 15),
              ),
            ),

            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 300.h,
              width: 300.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/welcome.jpg')
                )
              )
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: [
                Container(
                  width: 330.w,
                  height: 50.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 17.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 330.w,
              height: 50.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
              ),

            ),

          ],

        ),


      ),

    );
  }
}

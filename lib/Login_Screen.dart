import 'dart:math';
import 'package:abr/SignUp.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:abr/Forgot_Password_Screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text("Login Screen"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Login ',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
          ),
          SizedBox(
            height: 2,
          ),
          Text('Login to your Account'),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 250,
            child: Image.asset('assets/Loginpic.jpg'),

          ),

          SizedBox(
            height: 2,
          ),
          Column(
            children: [
              Container(
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 340,
                child: TextFormField(
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      suffixIcon: InkWell(
                          onTap: _showPassword,
                          child: Icon(Icons.visibility_off_outlined)),

                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child:
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot_password_screen(),));
              }, child: Text('Forgot Password?' , style: TextStyle(fontSize: 18,color: Colors.red),))
            ),
          ),
          SizedBox(
            height:1,
          ),
          Column(
            children: [
              Container(
                width: 330,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],

          ),
          SizedBox(
            height: 1,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 90, right: 10),
            child: Row(
              children: [
                Text('Dont have an account?',style: TextStyle(fontSize: 17),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp(),));
                }, child: Text('SignUp' , style: TextStyle(fontSize: 18,color: Colors.red),))
              ],
            ),
          )

        ]),
      ),
    )
    ;
  }

  void _showPassword() {
    setState(() {
      showPassword=!showPassword;

    });
  }
  }


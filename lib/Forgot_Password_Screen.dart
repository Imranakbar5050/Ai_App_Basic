import 'package:abr/Login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgot_password_screen extends StatefulWidget {
  const forgot_password_screen({super.key});

  @override
  State<forgot_password_screen> createState() => _forgot_password_screenState();
}

class _forgot_password_screenState extends State<forgot_password_screen> {
  bool showPassword1 = true;
  bool showPassword2 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Column(children: [
        SizedBox(
          height: 40,
        ),
                Center(
                    child: Text(
                      'Reset Password  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                         image: DecorationImage(
                            image: AssetImage('assets/forgotpassword.jpg')
                         )
                     )
                ),
                SizedBox(
                  height: 10,
                ),

        SizedBox(
          height: 30,
        ),
        Container(
          width: 340,
          child: TextFormField(
            obscureText: showPassword1,
            decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                suffixIcon: InkWell(
                    onTap: _showPassword1,
                    child: Icon(Icons.visibility_off_outlined)),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          width: 340,
          child: TextFormField(
            obscureText: showPassword2,
            decoration: InputDecoration(
                hintText: "Conform Password",
                label: Text('Conform Password'),
                filled: true,
                suffixIcon: InkWell(
                    onTap: _showPassword2,
                    child: Icon(Icons.visibility_off_outlined)),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),

          ),
        ),
                SizedBox(
                  height: 30,
                ),
                Container(

                  width: 330,
                  height: 60,
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
                        "Reset Password",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                )
      ]))),
    );
  }

  void _showPassword1() {
    setState(() {
      showPassword1 = !showPassword1;
    });
  }

  void _showPassword2() {
    setState(() {
      showPassword2 = !showPassword2;
    });
  }
}

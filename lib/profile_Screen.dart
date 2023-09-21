import 'package:abr/HomePage.dart';
import 'package:abr/edit_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_Screen extends StatefulWidget {
  const profile_Screen({super.key});

  @override
  State<profile_Screen> createState() => _profile_ScreenState();
}

class _profile_ScreenState extends State<profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(child: Text('Profile')),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person_pin),
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                child: SingleChildScrollView(
                    child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Profile',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 200,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(600),
                      child: const Image(
                          image: AssetImage('assets/ProfilePic.jpeg')))),
              SizedBox(
                height: 20,
              ),
              Text('Imran Akbar',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text('Software Engineer',
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text('About me:',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'My Name is Imran Akbar. I am basically from layyah city but current live in Islamabad. i am a student of BS software engineering.',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text('Education:',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Text(
                    '1: Matric(Computer Science) 2: Intermediate(ICS)               3:University(Numl)',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 120,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => edit_profile_screen()));
                    },
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: 1,
              ),
            ])))));
  }
}

import 'dart:typed_data';

import 'package:abr/profile_Screen.dart';
import 'package:abr/uploadprofie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class edit_profile_screen extends StatefulWidget {
  const edit_profile_screen({super.key});

  @override
  State<edit_profile_screen> createState() => _edit_profile_screenState();
}

class _edit_profile_screenState extends State<edit_profile_screen> {
  Uint8List? _image;
  Future<void> selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(child: Text('Edit Profile')),
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
              Stack(children: [
                _image != null
                    ? CircleAvatar(
                        radius: 64,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : Center(
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/ProfilePic.jpeg'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: IconButton(
                    onPressed: selectImage,
                    icon: Icon(
                      Icons.add_a_photo,
                      size: 40,
                    ),
                  ),
                )
              ]),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      label: Text("Full_Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Department",
                      label: Text("Department_Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "About me",
                      label: Text("About"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Education",
                      label: Text("Education"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 20,
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
                              builder: (context) => profile_Screen()));
                    },
                    child: Text(
                      "Conform",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ])))));
  }
}

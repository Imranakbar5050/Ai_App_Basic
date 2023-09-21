import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class images extends StatefulWidget {
  const images({super.key});

  @override
  State<images> createState() => _imagesState();
}

class _imagesState extends State<images> {
  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(
            child: Text("image an picker"),
          ),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            _image != null
                ? Image.file(
                    _image!,
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Image(
                      image: AssetImage('assets/gallaryimage.png'),
                    ),
                  ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
              title: 'Pick From Gallery',
              icon: Icons.image_outlined,
              onClick: () => getImage(ImageSource.gallery),
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              title: 'Pick From Camera',
              icon: Icons.camera,
              onClick: () => getImage(ImageSource.camera),
            ),
          ]),
        )));
  }
}

Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}
)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 60,
      width: 300,
      child: ElevatedButton(
        onPressed: onClick,
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 20,
            ),
            Text(title)
          ],
        ),
      ),
    ),
  );
}

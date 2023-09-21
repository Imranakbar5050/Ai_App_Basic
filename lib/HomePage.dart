import 'package:abr/Chats.dart';
import 'package:abr/profile_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ContactList.dart';
import 'images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Home")),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          );
        }),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currenIndex,

        items: [

        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.home),
          label: 'Home'
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.purple,
          icon: Icon(Icons.message),
          label: 'Message',
        ),

    BottomNavigationBarItem(
      backgroundColor: Colors.green,
    icon: Icon(Icons.settings),
    label: 'Setting',
    ),
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile_Screen()));
              },
              child: Icon(Icons.person)),
          label: 'Profile',

        )
      ],
        onTap: (Index){
          setState(() {
          _currenIndex = Index;
          });
        },
      ),

      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 60,
            width: 330,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chats(),
                        ));
                  },
                  child: Text(
                    "Chats",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          Container(
            height: 60,
            width: 330,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactList(),
                      ));
                },
                child: Text(
                  "Contact",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(

            height: 60,
            width: 330,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => images(),
                      ));
                },
                child: Text(
                  "Images",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(

            height: 60,
            width: 330,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => images(),
                      ));
                },
                child: Text(
                  "Images",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(

            height: 60,
            width: 330,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => images(),
                      ));
                },
                child: Text(
                  "Images",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(

            height: 60,
            width: 330,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => images(),
                      ));
                },
                child: Text(
                  "Images",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            width: 330,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => images(),
                      ));
                },
                child: Text(
                  "Images",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

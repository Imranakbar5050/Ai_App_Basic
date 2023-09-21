import 'package:flutter/material.dart';

class ChatsDetails extends StatefulWidget {
  const ChatsDetails({super.key});

  @override
  State<ChatsDetails> createState() => _ChatsDetailsState();
}

class _ChatsDetailsState extends State<ChatsDetails> {
  int _currenIndex = 0;

  List<String> _messages = [
    "Hello!",
    "Hi, how are you?",
    "I'm doing great, thank you.",
    "That's good to hear!",
    "Have a nice day!",
    "You too!",
    "You too!",
    "You too!",
    "You too!",
    "You too!",
    "You too!",
    "You too!"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            "Imran Akbar",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: Text(
            "Time",
            style: TextStyle(color: Colors.white),
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.person_pin, size: 50),
              onPressed: () {},
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Add message sending logic here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatsDetails(),
  ));
}

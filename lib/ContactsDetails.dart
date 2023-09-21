import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsDetails extends StatefulWidget {
  const ContactsDetails({super.key});

  @override
  State<ContactsDetails> createState() => _ContactsDetailsState();
}

class _ContactsDetailsState extends State<ContactsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Details',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
    );
  }
}

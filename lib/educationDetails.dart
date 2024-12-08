// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EducationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Education Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: double.maxFinite,
              color: Color.fromARGB(255, 3, 129, 9),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Informatics Engineering Student',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      'ITB Stikom Ambon University',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Years 2022',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: double.maxFinite,
              color: Color.fromARGB(255, 4, 163, 142),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Skill',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      'Html,Css,Php',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Laravel,Mobile Application',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: double.maxFinite,
              color: Color.fromARGB(255, 89, 12, 141),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hobby',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      'Playing Football',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Badminton',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

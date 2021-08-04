import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final name;
  final imageUrl;

  HomeScreen({this.name, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              "You are login succesfully",
              style: TextStyle(color: Colors.lightBlue, fontSize: 32),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Your name is $name",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
              ),
            ),
            Text(
              "$imageUrl",
              style: TextStyle(
                color: Colors.blueAccent,
                // fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'screens/registrationScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Are You Sure'),
          content: Text('Do you want to exit an App'),
          actions: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(false),
              child: Text('NO'),
            ),
            SizedBox(
              height: 16,
              width: 20,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(true),
              child: Text('YES',style: TextStyle(
              ),),
            ),
          ],
        ),
      ) ??
          false;
    }
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: RegistrationPage(),
      ),
    );
  }
}


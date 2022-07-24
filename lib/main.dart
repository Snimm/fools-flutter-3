

import 'package:flutter/material.dart';
import 'package:untitled2/customWidget.dart';
import 'package:untitled2/login.dart';
import 'package:untitled2/register.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomePage',
      routes: {
        'HomePage': (context) => HomePage(),
        'login': (context) => Login(),
        'Register': (context) => MyRegister(),
      },
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/ph.jpg'),
            fit: BoxFit.cover,
          )),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(0),
            ])),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Name? there are better things to do',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'catch phrase pending',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,

                      ),
                    ),
                    SizedBox(height: 100),
                    Text(
                      'Choose your language',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 25,

                      ),
                    ),

                    SizedBox(height: 30),

                    CustomButtonA(inputText: 'English', destination: 'login',),
                    SizedBox(height: 20),
                    CustomButtonA(inputText: 'Hindi', destination: 'Register',),
                  ]),
            ),
          )),
    );
  }
}

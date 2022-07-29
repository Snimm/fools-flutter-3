import 'package:flutter/material.dart';
import 'package:untitled2/customWidget.dart';


class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Wrapper(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              // Center is not enough to center vertically in the container
              child: Text(
                'Welcome',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomText(
              onChanged: (String value) {},
              hintText: 'SayMyName',
              icon: Icons.person, label: 'Username',
            ),

            CustomText(
              onChanged: (String value) {},
              hintText: '394783743344',
              icon: Icons.phone_android, label: 'Mobile number',
            ),

            CustomText(
              onChanged: (String value) {},
              hintText: 'example@gmail.com',
              icon: Icons.mail, label: 'Email',
            ),

            CustomText(
              onChanged: (String value) {},
              hintText: 'vacant',
              icon: Icons.person, label: 'vacant',
            ),
            CustomText(
              onChanged: (String value) {},
              hintText: 'vacant',
              icon: Icons.person, label: 'vacant',
            ),
            CustomPassA(hintText: 'Password',
              OnChanged: (String value) {}, label: 'Password',
            ),
            CustomPassA(hintText: 'retype password',
              OnChanged: (String value) {}, label: 'Retype password',
            ),
            SizedBox(
              height: 30,
            ),
            CustomButtonA(inputText: 'Register', destination: 'login'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Register');
                  },
                  child: Text(
                    'sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),


              ],
            )
          ],
        ),
      ), title: 'Register',
    );
  }
}

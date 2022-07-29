import 'package:flutter/material.dart';

import 'package:untitled2/customWidget.dart';
import 'package:untitled2/size_config.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Wrapper(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              // Center is not enough to center vertically in the container
              child: Text(
                'Welcome back',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomText(
              onChanged: (String value) {},
              hintText: 'Username',
              icon: Icons.person, label:'Username''', InputType: TextInputType.name,
            ),
            CustomPassA(hintText: 'password',
              OnChanged: (String value) {}, label: 'Password',
            ),
            SizedBox(
              height: 30,
            ),
            CustomButtonA(inputText: 'Login', destination: 'shop_home'),
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
                    'sign up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Register');
                  },
                  child: Text(
                    'forgot password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocalCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocalCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ), title: 'Login',
    );
  }
}

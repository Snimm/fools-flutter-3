import 'package:flutter/material.dart';
import 'package:untitled2/utilities/wrapper.dart';
import 'package:untitled2/customWidget.dart';

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
          Text(
            'Welcome',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
          ),
          SizedBox(
            height: 40,
          ),
          CustomText(
            onChanged: (String value) {},
            hintText: 'Email',
            icon: Icons.person,
          ),
          CustonPass(OnChanged: (String value) {  },),
          SizedBox(height: 20,),
          CustomButtonA(inputText: 'Login', destination: 'shop_home')

        ],
      ),
    ));
  }
}



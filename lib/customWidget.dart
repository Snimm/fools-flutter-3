import 'package:flutter/material.dart';

class CustomButtonA extends StatelessWidget {
  final String inputText;
  final String destination;

  const CustomButtonA({required this.inputText, required this.destination});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              inputText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )),
      onTap: (){
        Navigator.pushNamed(context, destination);


      },
    );
  }
}

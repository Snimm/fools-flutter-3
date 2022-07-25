import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  final Widget body;

  const Wrapper({required this.body});

  @override
  Scaffold build(BuildContext context) {
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
                  gradient:
                      LinearGradient(begin: Alignment.bottomLeft, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(0),
              ])),
              child: body)),
    );
  }
}

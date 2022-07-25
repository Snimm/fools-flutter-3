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
      onTap: () {
        Navigator.pushNamed(context, destination);
      },
    );
  }
}

class CustomBackground extends StatelessWidget {
  const CustomBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ]),
        ),
      ),
    );
  }
}

class CustomTextContainer extends StatelessWidget {
  final Widget child;

  const CustomTextContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * .8,
      height: size.height * .05,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
    ;
  }
}

class CustomText extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const CustomText({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextContainer(
        child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        hintText: hintText,
        border: InputBorder.none,
      ),
    ));
  }
}

class CustonPass extends StatelessWidget {
  final ValueChanged<String> OnChanged;

  const CustonPass({
    Key? key,
    required this.OnChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextContainer(
        child: TextField(
      obscureText: true,
      onChanged: OnChanged,
      decoration: InputDecoration(
        hintText: "Passsword",
        border: InputBorder.none,
        icon: Icon(
          Icons.lock,
          color: Colors.black,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: Colors.black,
        ),
      ),
    ));
  }
}

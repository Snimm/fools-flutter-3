import 'package:flutter/material.dart';
import 'package:untitled2/constants.dart';
import 'package:untitled2/shop_home.dart';
import 'package:untitled2/size_config.dart';
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
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              inputText,

              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kTextColor),
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
        color: kPrimaryLightColor,
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
  final String label;

  const CustomText({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextContainer(
        child: TextField(

      onChanged: onChanged,
      decoration: InputDecoration(labelText: label,
        icon: Icon(
          icon,
          color: kSecondaryColor,
        ),
        hintText: hintText,
        border: InputBorder.none,
      ),
    ));
  }
}

class CustonPass extends StatelessWidget {
  final ValueChanged<String> OnChanged;
  final String hintText;
  final String label;

  const CustonPass({
    Key? key,
    required this.OnChanged, required this.hintText, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextContainer(
        child: TextFormField(

      obscureText: true,
      onChanged: OnChanged,
      decoration: InputDecoration(labelText: label,
        hintText: hintText,
        border: InputBorder.none,
        icon: Icon(
          Icons.lock,
          color: kSecondaryColor,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: kSecondaryColor,
        ),
      ),
    ));
  }
}

class Wrapper extends StatelessWidget {
  final Widget body;
  final String title;

  const Wrapper({required this.body, required this.title});

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
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

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Name Pending",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}

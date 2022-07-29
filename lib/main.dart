import 'package:flutter/material.dart';
import 'package:untitled2/constants.dart';
import 'package:untitled2/customWidget.dart';
import 'package:untitled2/login.dart';
import 'package:untitled2/register.dart';
import 'package:untitled2/shop_home.dart';
import 'package:untitled2/size_config.dart';

void main() => runApp(MaterialApp(
      title: 'home page',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
            //App bar theme not working properly
          ),
          toolbarTextStyle: TextStyle(color: Colors.blue,),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomePage',
      routes: {
        'HomePage': (context) => const HomePage(),
        'login': (context) => const Login(),
        'Register': (context) => const MyRegister(),
        'shop_home': (context) => const shop_home()
      },
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome , Let’s shop & Sell!",
      "image": "assets/milkCartoon.webp"},
    {
      "text": "We help people conect with store \naround India",
      "image": "assets/cheese.webp"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home",
      "image": "assets/icecream.webp"
    },
    {
      "text": "We show the easy way to sell. \nJust stay at home ",
      "image": "assets/cow.webp"
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Wrapper(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]['text'],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          'Choose your language',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w100),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomButtonA(
                                inputText: 'English',
                                destination: 'login',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: CustomButtonA(
                                inputText: 'Hindi',
                                destination: 'Register',
                              ),
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
        title: 'Welcome',
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

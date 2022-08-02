import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled2/constants.dart';
import 'package:untitled2/shop_home.dart';
import 'package:untitled2/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenHeight(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchField(),
                    iconwithCounter(
                      icon: Icons.notifications,
                      numItems: 3,
                      press: () {},
                    ),
                    iconwithCounter(
                      icon: Icons.add_shopping_cart,
                      numItems: 0,
                      press: () {},
                    )
                  ],
                ),
              ),
              Categories(),
            ],
          ),
        ));
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.screenWidth * .6,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white38.withOpacity(.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          onChanged: (value) {
            //search value
          },
          decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(9),
              )),
        ));
  }
}

class iconwithCounter extends StatelessWidget {
  const iconwithCounter({
    Key? key,
    required this.icon,
    this.numItems = 0,
    required this.press,
  }) : super(key: key);
  final IconData icon;
  final int numItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press;
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenHeight(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: Colors.white24.withOpacity(.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: getProportionateScreenWidth(30),
            ),
          ),
          if (numItems != 0)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: getProportionateScreenHeight(16),
                width: getProportionateScreenHeight(16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '$numItems',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "milk"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "fermented"},
      {"icon": "assets/icons/Game Icon.svg", "text": "mawa"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "paneer"},
      {"icon": "assets/icons/Discover.svg", "text": "Shrikhand"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
              (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
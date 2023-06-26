import 'package:flutter/material.dart';
//import 'package:movies_app/pages/categorypage.dart';
//import 'package:movies_app/pages/homepage.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          color: Color(0xFF292B37),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //1st row
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'homePage');
            },
            child: const Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
          ),
          //2nd row
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'categoryPage');
            },
            child: const Icon(
              Icons.category,
              color: Colors.white,
              size: 30,
            ),
          ),
          //3rd row
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'moviePage');
            },
            child: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 30,
            ),
          ),
          //4th row
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'profilePage');
            },
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

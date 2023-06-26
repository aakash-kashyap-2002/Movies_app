import 'package:flutter/material.dart';
import 'package:movies_app/widgets/custom_navbar.dart';

class Categorypage extends StatelessWidget {
  const Categorypage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //1st column..................................
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //1st column
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    //2nd column
                    const SizedBox(height: 15),
                    //3rd column
                    const Text(
                      'Discover',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              //2nd column..................................
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                child: Column(
                  children: [
                    for (int i = 1; i <= 13; i++)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            //1st row
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'images/movie$i.jpg',
                                height: 60,
                                width: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            //2nd row
                            const SizedBox(width: 10),
                            //3rd row
                            const Text(
                              'Category',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            //4th row
                            const Spacer(),
                            //5th row
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 23,
                            ),
                          ],
                        ),
                      ),
                    const Divider(
                      color: Colors.white54,
                      height: 15,
                      thickness: 2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

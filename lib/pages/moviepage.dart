import 'package:flutter/material.dart';
import 'package:movies_app/widgets/custom_navbar.dart';
import 'package:movies_app/widgets/movie_page_buttons.dart';
import 'package:movies_app/widgets/recomended_widget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //1st component
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              'images/movie4.jpg',
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          //2nd component
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  //1st column............................................................
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                        InkWell(
                          onTap: () {
                            
                          },
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //2nd column............................................................
                  const SizedBox(height:45),
                  //3rd column............................................................
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow:[
                              BoxShadow(
                                color: const Color.fromARGB(255, 129, 56, 30).withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/movie4.jpg',
                              height: 250,
                              width: 180,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 35,top: 10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color.fromARGB(255, 129, 56, 30),
                            boxShadow: [
                              BoxShadow(
                              color: const Color.fromARGB(255, 129, 56, 30).withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                            ),
                            ],
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //4th column............................................................
                  const SizedBox(height: 5),
                  //5th column............................................................
                  const MoviePageButtons(),
                  //6th column............................................................
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //1st column
                        Text(
                          'UNBELIEVABLE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        //2nd column
                        SizedBox(height: 7.5),
                        //3rd column
                        Text(
                          '1hr, 49min  |  Crime, Drama',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        //4th column                                              
                        SizedBox(height: 3),
                        //5th column
                        Text(
                          'A teenager is charged with lying about having been raped, but two detectives follow the path to the truth.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                  //7th column............................................................
                  const SizedBox(height: 10),
                  //8th column............................................................
                  const RecommendedWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

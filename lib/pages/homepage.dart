import 'package:flutter/material.dart';
import 'package:movies_app/widgets/custom_navbar.dart';
import 'package:movies_app/widgets/new_movies.dart';
import 'package:movies_app/widgets/upcoming_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //1st column.........................................................................................
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //1st row
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Aakash',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 28
                          ),
                        ),
                        Text(
                          'What to Watch?',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        )
                      ],
                    ),
                    //2nd row
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset('images/profile.png',height: 60,width: 60,),
                    ),
                  ],
                ),
              ),
              //2nd column.....................................................................................
              Container(
                padding: const EdgeInsets.all(7),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                child: Row(
                  children: [
                    //1st row
                    const Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 30,
                    ),
                    //2nd row
                    Container(
                      width: 280,
                      margin: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white54)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //3rd column.........................................................................................
              const SizedBox(height: 10),
              //4th column.........................................................................................
              const UpcomingWidget(),
              //5th column.........................................................................................
              const SizedBox(height: 10),
              //6th column.........................................................................................
              const NewMovies(),
              //7th column.........................................................................................
              //const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1st column.........................................................................................
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //1st row
              Text(
                'Upcoming Movies',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              //2nd row
              Text(
                'See All',
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
            ],
          ),
        ),
        //2nd column.........................................................................................
        const SizedBox(height: 5),
        //3rd column.........................................................................................
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i=1; i<=4; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/movie$i.jpg',
                      height: 180,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}

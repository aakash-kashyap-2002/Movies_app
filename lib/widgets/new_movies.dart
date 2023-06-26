import 'package:flutter/material.dart';

class NewMovies extends StatelessWidget {
  const NewMovies({super.key});

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
                'New Movies',
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
              for(int i=6 ; i<=13 ; i++)
              //1st row
              InkWell(
                onTap: (){},
                child: Container(
                  height: 300,
                  width: 190,
                  margin: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [ BoxShadow(
                      color: Color(0xFF292B37),
                      spreadRadius: 2,
                      blurRadius: 6,
                    ),],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //1st column
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          'images/movie$i.jpg',
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      //2nd column
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //1st....
                            Text(
                              'Movie Title here',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            //2nd....
                            SizedBox(height: 5),
                            //3rd....
                            Text(
                              'Action/Adventure',
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            //4th....
                            SizedBox(height: 8),
                            //5th
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '8.5',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

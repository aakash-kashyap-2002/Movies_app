import 'package:flutter/material.dart';
import 'package:movies_app/widgets/custom_navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //1st member........
          Container(
            height: 220,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 100, 31, 161),
                    Color.fromARGB(255, 164, 105, 215),
                  ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(125),
                bottomRight: Radius.circular(125),
              ),
            ),
          ),
          //2nd member
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //1st column...........
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                //2nd column..........
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Aakash Kashyap',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                //3rd column..........
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 1.5),
                  height: 100,
                  width: 100,
                  child: const CircleAvatar(
                    foregroundColor: Color.fromARGB(255, 97, 36, 151),
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 210, 201, 197),
                    child: Icon(
                      Icons.person,
                      size: 70,
                    ),
                  ),
                ),
                //4th column..........
                const SizedBox(height: 10),
                //5th column..........
                profileRows('Aakash Kashyap', Icons.person_2_outlined),
                const Divider(
                  thickness: 1.5,
                ),
                //6th column..........
                profileRows('Birthday', Icons.cake),
                const Divider(
                  thickness: 1.5,
                ),
                //7th column..........
                profileRows('82091XXX64', Icons.mobile_screen_share),
                const Divider(
                  thickness: 1.5,
                ),
                //8th column..........
                profileRows('Instagram', Icons.share),
                const Divider(
                  thickness: 1.5,
                ),
                //9th column..........
                profileRows('E-mail', Icons.email_outlined),
                const Divider(
                  thickness: 1.5,
                ),
                //10th column..........
                profileRows('Password', Icons.wifi_password_outlined),
                const Divider(
                  thickness: 1.5,
                ),
                //11th column..........
                const SizedBox(height: 10),
                //12th column..........
                Container(
                  height: 40,
                  width: 150,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 41, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 100, 31, 161),
                          Color.fromARGB(255, 164, 105, 215),
                        ]),
                  ),
                  child: const Text(
                    'Edit profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }

  Padding profileRows(String str, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color.fromARGB(255, 97, 36, 151),
            size: 30,
          ),
          const SizedBox(width: 50),
          Text(
            str,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

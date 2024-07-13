// ignore_for_file: file_names, prefer_const_literals_to_create_immutables

import 'package:exerciseapp/Screens/LoginPage.dart';
import 'package:exerciseapp/Widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import '../Widgets/categorycard.dart';
import '../Widgets/searchBar.dart';
import '../constants.dart';
import 'DetailsScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
              height: size.height * 0.45,
              decoration: const BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                    image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
                    alignment: Alignment.centerLeft),
              )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: Image.asset("assets/icons/menu.png")),
                    ),
                  ),
                  const Text(
                    'Welcome \nChaudhary Awais',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                  ),
                  const searchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.75,
                      children: [
                        const categorycard(
                          svgsrc: "assets/icons/Hamburger.png",
                          title: 'Diet ',
                        ),
                        const categorycard(
                          title: "Kegel Exercises",
                          svgsrc: "assets/icons/Excrecises.png",
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailsScreen()),
                            );
                          },
                          child: categorycard(
                            title: "Meditation",
                            svgsrc: "assets/icons/Meditation.png",
                          ),
                        ),
                        const categorycard(
                          title: "Yoga",
                          svgsrc: "assets/icons/yoga.png",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

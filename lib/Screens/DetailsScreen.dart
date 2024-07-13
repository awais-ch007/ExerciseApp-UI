// ignore_for_file: file_names

import 'package:exerciseapp/Screens/HomePage.dart';
import 'package:exerciseapp/constants.dart';
import 'package:flutter/material.dart';

import '../Widgets/searchBar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                    image: AssetImage("assets/images/meditation_bg.png"),
                    fit: BoxFit.fitWidth)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Text(
                      'Meditation',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: const Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: const searchBar(),
                    ),
                    const Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SessionCard(
                          sessionnum: 1,
                          isDone: true,
                        ),
                        SessionCard(
                          sessionnum: 2,
                        ),
                        SessionCard(
                          sessionnum: 3,
                        ),
                        SessionCard(
                          sessionnum: 4,
                        ),
                        SessionCard(
                          sessionnum: 5,
                        ),
                        SessionCard(
                          sessionnum: 6,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Meditation",
                      style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const MeditationLessons(
                      src: "assets/icons/Meditation_women_small.png",
                      title: 'Basics',
                      title2: 'Meditation basics',
                    ),
                    MeditationLessons(
                      src: "assets/icons/Meditation_women_small.png",
                      title: 'Deep Meditation ',
                      title2: 'Deep Meditation ',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MeditationLessons extends StatelessWidget {
  final String src;
  final String title;
  final String title2;
  const MeditationLessons({
    super.key,
    required this.src,
    required this.title,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 23,
            spreadRadius: -13,
            color: kShadowColor,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(src),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                title2,
                style: const TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.lock),
          )
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int sessionnum;
  final bool isDone;

  const SessionCard({super.key, required this.sessionnum, this.isDone = false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraints.maxWidth * 0.46,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                      color: isDone ? kBlueColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kBlueColor),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : kBlueColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Session $sessionnum",
                    style: const TextStyle(
                      fontSize: 14,
                      color: kTextColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

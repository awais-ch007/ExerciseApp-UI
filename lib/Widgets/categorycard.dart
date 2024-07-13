// ignore_for_file: file_names

import 'package:exerciseapp/constants.dart';
import 'package:flutter/material.dart';

class categorycard extends StatelessWidget {
  final String svgsrc;
  final String title;

  const categorycard({
    super.key,
    required this.svgsrc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        width: 80,

        // margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  svgsrc,
                ),
                const Spacer(),
                Text(
                  title,
                  style: const TextStyle(color: kTextColor, fontSize: 15),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

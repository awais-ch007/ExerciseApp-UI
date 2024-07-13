import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.5),
      ),
      child: const TextField(
        decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: 'Search',
            border: InputBorder.none),
      ),
    );
  }
}

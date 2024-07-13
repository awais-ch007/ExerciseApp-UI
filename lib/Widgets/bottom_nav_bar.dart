import 'package:exerciseapp/constants.dart';
import 'package:flutter/material.dart';

// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
//       color: Colors.white,
//       height: 80,
//       child: const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//              BottomNavItem(
//             title: "Today",
//             src: "assets/icons/calendar.svg", isActive: false,
//           ),
//           BottomNavItem(
//             title: "All Exercises",
//             src: "assets/icons/gym.svg",
//             isActive: true,
//           ),
//           BottomNavItem(
//             title: "Settings",
//             src: "assets/icons/Settings.svg",
//           ),]),
//     );
//   }
// }

// class BottomNavItem extends StatelessWidget {
//   final String title;
//   final String src;

//   final bool isActive;
//   const BottomNavItem({
//     super.key, required this.title, required this.src,  this.isActive = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: (){},
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Image.asset(src,color: isActive?kActiveIconColor:kTextColor,),
//             Text(
//               title,
//               style: TextStyle(
//                 color: isActive? kActiveIconColor:kTextColor,
//               ),
//             )
//           ],
//         ));
//   }
// }

import 'package:flutter/material.dart';

import 'package:exerciseapp/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: "Today",
            src: "assets/icons/calendar.png",
          ),
          BottomNavItem(
            title: "All Exercises",
            src: "assets/icons/gym.png",
            isActive: true,
          ),
          BottomNavItem(
            title: "Settings",
            src: "assets/icons/Settings.png",
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String src;
  final String title;

  final bool isActive;
  const BottomNavItem({
    super.key,
    this.src = '',
    this.title = '',
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          src,
          height: 30,
          width: 30,
          color: isActive ? kActiveIconColor : kTextColor,
        ),
        Text(
          title,
          style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
//
// class BottomNavigationBar extends StatefulWidget {
//   @override
//   _BottomNavigationBarState createState() => _BottomNavigationBarState();
// }
//
// class _BottomNavigationBarState extends State<BottomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(30.0),
//         topRight: Radius.circular(30.0),
//       ),
//       child: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         onTap: (index) {
//           setState(
//             () {
//               _currentPageIndex = index;
//             },
//           );
//         },
//         currentIndex: _currentPageIndex,
//         items: [
//           BottomNavigationBarItem(
//             title: Text('Home'),
//             icon: iconBuilder(
//               iconIndex: 0,
//               selectedIcon: Icon(
//                 Icons.home,
//                 size: 30,
//               ),
//               unselectedIcon: SvgPicture.asset(
//                 'assets/icons/home.svg',
//                 height: 24,
//                 width: 28,
//               ),
//             ),
//           ),
//           BottomNavigationBarItem(
//             title: Text('Shop'),
//             icon: iconBuilder(
//               iconIndex: 1,
//               selectedIcon: Icon(
//                 Icons.shopping_cart,
//                 size: 30,
//               ),
//               unselectedIcon:
//                   SvgPicture.asset('assets/icons/shopping cart.svg'),
//             ),
//           ),
//           BottomNavigationBarItem(
//             title: Text('Bag'),
//             icon: iconBuilder(
//               iconIndex: 2,
//               selectedIcon: Icon(
//                 Icons.shopping_basket,
//                 size: 30,
//               ),
//               unselectedIcon: SvgPicture.asset('assets/icons/cart.svg'),
//             ),
//           ),
//           BottomNavigationBarItem(
//             title: Text('Favorites'),
//             icon: iconBuilder(
//               iconIndex: 3,
//               selectedIcon: Icon(
//                 Icons.favorite,
//                 size: 30,
//               ),
//               unselectedIcon: SvgPicture.asset('assets/icons/favorite.svg'),
//             ),
//           ),
//           BottomNavigationBarItem(
//             title: Text('Profile'),
//             icon: iconBuilder(
//               iconIndex: 4,
//               selectedIcon: Icon(
//                 Icons.account_circle,
//                 size: 30,
//               ),
//               unselectedIcon: SvgPicture.asset('assets/icons/profile.svg'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

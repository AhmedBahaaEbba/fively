import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './cart.dart';
import './categories_navigator.dart';
import './favorites.dart';
import './home.dart';
import './profile.dart';
import '../main.dart';

class MainScreen extends StatefulWidget {
  static String routeName = '/main-screen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;
  GlobalKey<NavigatorState> categoriesNavigatorKey;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    null,
    GlobalKey<NavigatorState>(),
    null,
    null,
    null,
  ];

  // ignore: missing_return
  Future<bool> _systemBackButtonPressed() {
    if (_navigatorKeys[_currentPageIndex] == null) {
      if (_currentPageIndex == 0) {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                child: Text('Yes'),
                // onPressed: () => Navigator.of(context).pop(true),
                onPressed: () => SystemChannels.platform
                    .invokeMethod<void>('SystemNavigator.pop'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Text('Gradient'),
              ),
            ],
          ),
        );
      } else {
        setState(() {
          _currentPageIndex = 0;
        });
      }
    } else {
      if (_navigatorKeys[_currentPageIndex].currentState.canPop()) {
        _navigatorKeys[_currentPageIndex]
            .currentState
            .pop(_navigatorKeys[_currentPageIndex].currentContext);
      } else {
        if (_currentPageIndex == 0) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Are you sure?'),
              content: Text('Do you want to exit an App'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('No'),
                ),
                TextButton(
                  child: Text('Yes'),
                  onPressed: () => SystemChannels.platform
                      .invokeMethod<void>('SystemNavigator.pop'),
                ),
              ],
            ),
          );
        } else {
          setState(() {
            _currentPageIndex = 0;
          });
        }
      }
    }
    // return SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
  }

  Widget iconBuilder(
      {int iconIndex, Widget selectedIcon, Widget unselectedIcon}) {
    if (_currentPageIndex == iconIndex) {
      return selectedIcon;
    } else {
      return unselectedIcon;
    }
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height / 812;
    w = MediaQuery.of(context).size.width / 375;
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        body: [
          Home(),
          CategoriesNavigator(
            categoriesNavigatorKey: _navigatorKeys[1],
          ),
          Cart(),
          Favorites(),
          Profile(),
        ][_currentPageIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(
                () {
                  _currentPageIndex = index;
                },
              );
            },
            currentIndex: _currentPageIndex,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: iconBuilder(
                  iconIndex: 0,
                  selectedIcon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  unselectedIcon: SvgPicture.asset(
                    'assets/icons/home.svg',
                    height: 24,
                    width: 28,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Shop',
                icon: iconBuilder(
                  iconIndex: 1,
                  selectedIcon: Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                  unselectedIcon:
                      SvgPicture.asset('assets/icons/shopping cart.svg'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Bag',
                icon: iconBuilder(
                  iconIndex: 2,
                  selectedIcon: Icon(
                    Icons.shopping_basket,
                    size: 30,
                  ),
                  unselectedIcon: SvgPicture.asset('assets/icons/cart.svg'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Favorites',
                icon: iconBuilder(
                  iconIndex: 3,
                  selectedIcon: Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  unselectedIcon: SvgPicture.asset('assets/icons/favorite.svg'),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: iconBuilder(
                  iconIndex: 4,
                  selectedIcon: Icon(
                    Icons.account_circle,
                    size: 30,
                  ),
                  unselectedIcon: SvgPicture.asset('assets/icons/profile.svg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

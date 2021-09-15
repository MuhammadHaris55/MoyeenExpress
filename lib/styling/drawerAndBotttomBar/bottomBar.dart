import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moyeen_express/screens/categories.dart';
import 'package:moyeen_express/screens/home.dart';
import 'package:moyeen_express/screens/signUp.dart';
import 'package:moyeen_express/styling/appColors.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final screns = [
    //   Center(child: Text('home')),
    //   Navigator.of(context).pushNamed('/hirer'),
    //   // Center(child: Text('profile')),
    //   Center(child: Text('search')),
    //   Center(child: Text('notification')),
    // ];
    // final scren = [
    //   Navigator.of(context).pushNamed('/hirer'),
    //   Navigator.of(context).pushNamed('/client'),
    //   Navigator.of(context).pushNamed('/signup'),
    //   Navigator.of(context).pushNamed('/login'),
    // ];
    List<Widget> scren = [
      Home(),
      SignUp(),
      Categories(),
      Home(),
      Categories(),
      // onPressed: () {
      //   showSearch(context: context, delegate: searchBar());
      // },
    ];

    return Scaffold(
      body: Container(child: scren[_currentIndex]),
      backgroundColor: themeColor,
      // body: client(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        // backgroundColor: themeColor,
        // fixedColor: themeColor,
        selectedItemColor: textColor,
        selectedLabelStyle: GoogleFonts.poppins(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: textColor,
            ),
            label: 'Home',
            backgroundColor: themeColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_list,
              color: textColor,
            ),
            label: 'Categories',
            backgroundColor: themeColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.device_hub_rounded,
              color: textColor,
            ),
            label: 'Top Deals',
            backgroundColor: themeColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: textColor,
            ),
            label: 'Settings',
            backgroundColor: themeColor,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // if (index == 0) {
            //   Navigator.of(context).pushNamed('/hirer');
            // } else if (index == 1) {
            //   Navigator.of(context).pushNamed('/client');
            // } else if (index == 2) {
            //   Navigator.of(context).pushNamed('/login');
            // } else if (index == 3) {
            //   Navigator.of(context).pushNamed('/signup');
            // }
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moyeen_express/styling/appColors.dart';

ListTile drawerTile(String name, String route) {
  return ListTile(
    title: Text(
      '$name',
      style: GoogleFonts.poppins(
        color: textColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    onTap: () {
      Get.toNamed('$route');
    },
  );
}

Divider drawerDivider() {
  return Divider(
    thickness: 1.0,
    height: 1,
    color: drawerDividerColor,
  );
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.r),
        ),
        child: Drawer(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: themeColor,
            child: DrawerHeader(
              child: Column(
                children: [
                  drawerTile('Home', '/nav'),
                  drawerDivider(),
                  drawerTile('Category\'s', '/nav'),
                  drawerDivider(),
                  drawerTile('Today\'s Deal', '/home'),
                  drawerDivider(),
                  drawerTile('Your Orders', '/home'),
                  Spacer(),
                  drawerTile('Setting', '/home'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

appDrawer() {
  return Drawer(
    child: ListView(
      children: [
        drawerTile('Home', '/home'),
        ListTile(
          title: Text(
            'Home',
            style: GoogleFonts.poppins(
              fontSize: 18.sp,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Home',
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}

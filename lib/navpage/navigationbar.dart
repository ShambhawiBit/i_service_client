import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';

import '../Category/Categories.dart';
import '../search_screen/Search.dart';



class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages=[
    search(),
    Category_screen(),
  ];
  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedFontSize: 0,
      //   selectedFontSize: 0,
      //   type: BottomNavigationBarType.shifting,
      //   backgroundColor: Color(0xffEDEDED),
      //   onTap: onTap,
      //   currentIndex: currentIndex,
      //   selectedItemColor:Color(0xff292D32) ,
      //   unselectedItemColor: Color(0xff000000).withOpacity(0.5),
      //
      //
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //       //color: Color(0xff292D32),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.book_outlined),
      //       label: 'Booking',
      //       // backgroundColor: Colors.green,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.local_offer_outlined),
      //       label: 'School',
      //
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.payment_outlined),
      //       label: 'Settings',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.help_outline_rounded),
      //       label: 'Settings',
      //     ),
      //   ],
      //
      // ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        unselectedIconSize: 25,
        selectedIconSize: 25,
        unselectedFontSize: 0,
         selectedFontSize: 0,
        backgroundColor: Color(0xffEDEDED),
        selectedColor:Color(0xffF5610F) ,
        unSelectedColor: Color(0xff000000),
        currentIndex:currentIndex,
        onTap:onTap,
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,

        // gradient: LinearGradient(
        //   colors: kGradients,
        // ),

        customBottomBarItems: [
          CustomBottomBarItems(
            icon: Icons.home_outlined,
                  label: 'Home',
          ),
          CustomBottomBarItems(
            icon:Icons.book_outlined,
                  label: 'Booking',
          ),
          CustomBottomBarItems(
            icon:Icons.local_offer_outlined,
            label: 'Offers',
             ),
          CustomBottomBarItems(
            label: 'payment',
            icon: Icons.card_giftcard_rounded,
          ),
          CustomBottomBarItems(
            label: 'Help',
            icon: Icons.help_outline_rounded,
          ),
        ],
      ),
    );

  }
}

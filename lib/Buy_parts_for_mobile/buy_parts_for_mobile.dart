import 'package:flutter/material.dart';

import 'gridView.dart';
class buyParts extends StatefulWidget {
  const buyParts({Key? key}) : super(key: key);

  @override
  State<buyParts> createState() => _buyPartsState();
}

class _buyPartsState extends State<buyParts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:
        Color(0xffFFF0E7),
        title: Text(
          'Back',
          style: TextStyle(color:Colors.black ,fontSize: 14,fontFamily: 'Montserrat'),

        ),


        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 5.73,
            width: 11.56,
            decoration: BoxDecoration(
            ),
            child: Icon(
              size: 10,
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff292D32),
            ),
          ),
        ),
      ),
        body: Container(
        color: Color(0xffF5F5F5),
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Gridview(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffDEDED),
        items:  [
          BottomNavigationBarItem(
            label:'Home',
            icon: Icon(Icons.home_outlined,color: Color(0xffEE610F),),


          ),
          BottomNavigationBarItem(
            label:'Categories',
            icon: Icon(Icons.book_outlined,color: Color(0xff000000)),
          ),
          BottomNavigationBarItem(
            label:'Cart',
            icon: Icon(Icons.local_offer_outlined,color: Color(0xff000000)),

          ),
          BottomNavigationBarItem(
            label:'Account',
            icon: Icon(Icons.payment_outlined,color: Color(0xff000000)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_rounded,color: Color(0xff000000)),
            label: 'Settings',

          ),
        ],
      ),
    );

  }
}

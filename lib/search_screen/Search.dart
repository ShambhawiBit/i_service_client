import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ListViewParts.dart';
import 'ListViewService.dart';
class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  final Map<int, Widget> loginWidgets =  <int,Widget>{
    0: Text('Log In',style: TextStyle(color:  Color(0xffEE610F),fontSize: 14,fontWeight: FontWeight.w400),),
    1: Text('Sign Up',style: TextStyle(color:  Color(0xffEE610F),fontSize: 14,fontWeight: FontWeight.w400),)
};
final Map<int, Widget> icons =  <int, Widget>{
  0:Center(
    child: SingleChildScrollView(
     child: ListViewBuilder(),
    ) ,
  ),
  1:Center(
    child: SingleChildScrollView(
      child:listViewService()
    ),
  ),
};
int? sharedValue = 0;

  // bool isShow=false;
  // bool isVisible=true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:
        Color(0xffEDEDED),
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
      body: Column(
        children: [
      SizedBox(
      height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25,right: 25),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: (){

              },
            ),
            hintText:'Search for services or parts',
            contentPadding: EdgeInsets.all(15),

          ),
        ),
      ),
          Container(
            width: width*0.9,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100)
            ),
            child: SizedBox(
              child: CupertinoSegmentedControl(
                selectedColor: Color(0xffFFF0E7),
                borderColor: Color(0xffEE610F),
                children: loginWidgets,
                onValueChanged: (int val){
                  setState(() {
                    sharedValue = val;
                  });
                },
                groupValue: sharedValue ,
              ),
            ),
          ),
          Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: icons[sharedValue],
              )),

        ],

      ),
      //bottomNavigationBar: ,
    );
  }
}


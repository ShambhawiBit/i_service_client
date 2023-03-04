import 'package:flutter/material.dart';
class profile_details extends StatefulWidget {
  const profile_details({Key? key}) : super(key: key);

  @override
  State<profile_details> createState() => _profile_detailsState();
}
class _profile_detailsState extends State<profile_details> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      color: Color(0xffF5F5F5),
      width: _mediaQuery.size.width*1,
      height: _mediaQuery.size.height*1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
            child: Text('Username',
              style:TextStyle(
                  color: Color(0xeff000000),
                  fontSize: 14,fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(padding:EdgeInsets.only(left: 24,right: 24),
            child:TextField(
              decoration: InputDecoration(
                  hintText: "Rishabh Kapoor",
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
            child: Text('Email address',
              style:TextStyle(
                  color: Color(0xeff000000),
                  fontSize: 14,fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(padding:EdgeInsets.only(left: 24,right: 24),
            child:TextField(
              decoration: InputDecoration(
                  hintText: "rishabboor@gmail.com",
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
            child: Text('Phone number',
              style:TextStyle(
                  color: Color(0xeff000000),
                  fontSize: 14,fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(padding:EdgeInsets.only(left: 24,right: 24),
            child:TextField(
              decoration: InputDecoration(
                  hintText: "+91-9329520545",
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
            child: Text('Gender',
              style:TextStyle(
                  color: Color(0xeff000000),
                  fontSize: 14,fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(padding:EdgeInsets.only(left: 24,right: 24),
            child:TextField(
              decoration: InputDecoration(
                  hintText: "Female",
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
            child: Text('Date Of Birth',
              style:TextStyle(
                  color: Color(0xeff000000),
                  fontSize: 14,fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(padding:EdgeInsets.only(left: 24,right: 24),
            child:TextField(
              decoration: InputDecoration(
                  hintText: "10/4/1977",
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),

        ],
      ),
    );
  }
}

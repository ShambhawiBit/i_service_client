import 'package:flutter/material.dart';
import 'package:i_service_client/Profile/profile_details.dart';
class profile2 extends StatefulWidget {
  const profile2({Key? key}) : super(key: key);

  @override
  State<profile2> createState() => _profile2State();
}

class _profile2State extends State<profile2> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        backgroundColor:
        Color(0xffEDEDED),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Edit Profile",
              style: TextStyle(fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,color: Color(0xff000000),fontSize: 16),),
          ],
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

        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("SAVE",
              style: TextStyle(fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,color: Color(0xffEE610F),fontSize: 14),),
          ),
        ],
      ),

      body:SingleChildScrollView(
        child:Column(
            children: [
              Container(
                height: 200,
                width: _mediaQuery.size.width*1,
                color:Color(0xffFFF0E7),
                child:Center(
                  child: Stack(

                    children: <Widget>[
                      Container(
                          height:100,
                          width: 100,
                          child:Image.asset("assets/images/profile2.png",height: 100,width: 100,)
                      ),
                      Positioned(
                        bottom: 0,
                        right: 10,

                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffEE610F
                              )
                          ),
                          child: Icon(Icons.camera_alt_outlined,color: Color(0xffFFFFFF),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              profile_details(),

            ]
        ),
      ),
    );
  }
}

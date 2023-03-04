import 'package:flutter/material.dart';
import 'package:i_service_client/Profile/profile_list_items.dart';
class profileone extends StatefulWidget {
  const profileone({Key? key}) : super(key: key);

  @override
  State<profileone> createState() => _profileoneState();
}

class _profileoneState extends State<profileone> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xffFFF0E7),
              height: 200,
              width: _mediaQuery.size.width*1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:EdgeInsets.only(left: 24,top: 40,right: 300),
                      child:Container(
                          height: 67,
                          width: _mediaQuery.size.width*1,
                          child: Text("Profile",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,fontFamily: 'Montserrat',color: Color(0xff000000)),)
                      )
                  ),

                  Container(
                    height: 77,
                    width: _mediaQuery.size.width*1,
                    child:Padding(
                      padding: const EdgeInsets.only(left: 24,top: 10,right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Image.asset("assets/images/profile2.png",fit: BoxFit.cover,),


                          SizedBox(
                            width:16 ,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rishab Kapoor",
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,fontFamily: 'Montserrat',color: Color(0xff68645E))),
                                SizedBox(
                                  height: 6,
                                ),
                                Text("+91-9329520545",
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: 'Montserrat',color: Color(0xff68645E)))
                              ],

                            ),
                          ),
                        //  Image.asset("assets/images/profile2.png",height: 15,width: 15,),
                         Icon(Icons.edit_outlined,size:15,color: Color(0xffEE610F),),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            profileListItems()
          ],
        ),
      ),
    );
  }
}



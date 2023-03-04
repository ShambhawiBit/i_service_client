import 'package:flutter/material.dart';
import 'package:i_service_client/Profile/profile_dilog_box.dart';
class profileListItems extends StatefulWidget {
  const profileListItems({Key? key}) : super(key: key);

  @override
  State<profileListItems> createState() => _profileListItemsState();
}

class _profileListItemsState extends State<profileListItems> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 27,left: 24,right: 24),
          child: Container(
            color: Color(0xffFEFEFE),
            child: ListTile(
              leading: Icon(Icons.call,color: Color(0xffEE610F),),
              title: Text("Contact us",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,fontFamily: 'Montserrat',color: Color(0xff000000)),),
              trailing: Icon(Icons.arrow_back_ios_rounded,size: 12,color: Color(0xff292D32),),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 27,left: 24,right: 24),
          child: Container(
            color: Color(0xffFEFEFE),
            child: ListTile(
              leading: Icon(Icons.privacy_tip,color: Color(0xffEE610F),),
              title: Text("Privacy Policy",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,fontFamily: 'Montserrat',color: Color(0xff000000)),),
              trailing: Icon(Icons.arrow_back_ios_rounded,size: 12,color: Color(0xff292D32),),
            ),
          ),
        ),Padding(
          padding: const EdgeInsets.only(top: 27,left: 24,right: 24),
          child: Container(
            color: Color(0xffFEFEFE),
            child: ListTile(
              leading: Icon(Icons.quick_contacts_dialer,color: Color(0xffEE610F)),
              title: Text("Terms and Conditions",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,fontFamily: 'Montserrat',color: Color(0xff000000)),),
              trailing: Icon(Icons.arrow_back_ios_rounded,size: 12,color: Color(0xff292D32),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27,left: 24,right: 24),
          child: GestureDetector(
            child: Container(
              color: Color(0xffFEFEFE),
              child: ListTile(
                leading: Icon(Icons.lock_outline_rounded,color: Color(0xffEE610F)),
                title: Text("Change Password",
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,fontFamily: 'Montserrat',color: Color(0xff000000)),),
                trailing: Icon(Icons.arrow_back_ios_rounded,size: 12,color: Color(0xff292D32),),
              ),
            ),
            onTap: (){
              showDialog(context: context, builder: (BuildContext context){
                return profile_dilog();
              });
              

            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27,left: 24,right: 24),
          child: Container(
            color: Color(0xffFEFEFE),
            child: ListTile(
              leading: Icon(Icons.logout,color: Color(0xffEE610F)),
              title: Text("Logout",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,fontFamily: 'Montserrat',color: Color(0xff000000)),),
            ),
          ),
        ),
      ],
    );
  }
}

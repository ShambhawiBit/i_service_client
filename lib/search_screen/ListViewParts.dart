import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class listViewService extends StatefulWidget {
  const listViewService({Key? key}) : super(key: key);

  @override
  State<listViewService> createState() => _listViewServiceState();
}

class _listViewServiceState extends State<listViewService> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset("assets/images/mobileSegment.png",height: 58,width: 44,),
            title: Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text("iPhone 13 screen guard",
                style: TextStyle(color:Colors.black ,
                    fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w600),),
            ),
            subtitle: Text('Price : ₹1,000',
              style:TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w400,fontFamily: 'Montserrat',fontSize: 14),
            ),
          );
        });
  }
}

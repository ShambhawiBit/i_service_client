import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  // const ListTile(
  // // leading: Icon(Icons.work,size: 25,color: Colors.black),
  // leading: CircleAvatar(
  // backgroundColor: Colors.grey,
  // child: Icon(Icons.work,size: 25,color: Colors.black),
  // ),
  // title: Text(
  // 'Work',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
  // ),
  // trailing: Icon(Icons.more_horiz_outlined,color: Colors.grey,size: 25,),
  // subtitle: Text('Acacia,Blue Lake,California',style:TextStyle(color: Colors.black),
  // ),
  // selected: true,
  // ),
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset("assets/images/mobileSegment.png",height: 58,width: 44,),
            title: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Mobile Repair",
                style: TextStyle(color:Colors.black ,
                    fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w600),),
            ),
            subtitle: Text('Battery Replacement',
              style:TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w400,fontFamily: 'Montserrat',fontSize: 14),
           // ),
          ),
          );
        });

  }
}

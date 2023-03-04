import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: ListView.builder(
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
          }),
    );

  }
}

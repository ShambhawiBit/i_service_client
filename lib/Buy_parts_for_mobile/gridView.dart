import 'package:flutter/material.dart';

import '../Frame/Frame.dart';
import '../Onboarding/Onboarding1.dart';

class Gridview extends StatefulWidget {
  const Gridview({Key? key}) : super(key: key);

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  List imageList = [
    {"image": "assets/images/applebig.png"},
    {"image": "assets/images/Samsungbig.png"},
    {"image": "assets/images/mibig.png"},
    {"image": "assets/images/nokiabig.png"},
    {"image": "assets/images/oppobig.png"},
    {"image": "assets/images/nokiabig.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 8, right: 8),
       color: Color(0xffFFFFFF),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: imageList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //childAspectRatio:
                //MediaQuery.of(context).size.width * .44 / 246,
                mainAxisSpacing: 0,
                crossAxisSpacing:10,
                crossAxisCount: 2,
                // mainAxisExtent:170
              ),
              itemBuilder: (context, index) => Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        //height: 139,
                        width: double.infinity,
                        child: GestureDetector(
                          child: Image.asset(
                            imageList[index]['image'],
                            fit: BoxFit.cover,
                          ),
                            onTap: () {
                              showDialog(context: context, builder: (BuildContext context) {
                                return page_controller();
                              });
                            }
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

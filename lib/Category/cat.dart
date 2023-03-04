import 'package:flutter/material.dart';
class cat extends StatefulWidget {
  const cat({Key? key}) : super(key: key);

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat>{
  List gridMap= [
    {"image": "assets/images/MobileRepair.png",
    },
    {"image": "assets/images/televisionRepair.png",
    },
    {"image": "assets/images/cameraRepair.png",
    },
    {
      "image":"assets/images/printerRepair.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 8, right: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: gridMap.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //childAspectRatio:
                  //MediaQuery.of(context).size.width * .44 / 246,
                  mainAxisSpacing: 10,
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
                        child: Image.asset(
                          gridMap[index]['image'],
                          fit: BoxFit.cover,
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

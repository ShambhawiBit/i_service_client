import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({Key? key}) : super(key: key);

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  List imageList = [
    {"image": "assets/images/apple.png"},
    {"image": "assets/images/samsung.png"},
    {"image": "assets/images/mi.png"},
    {"image": "assets/images/nokia.png"},
    {"image": "assets/images/oppo.png"},
    {"image": "assets/images/nokia.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: imageList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2),
              itemBuilder: (context, index) => Container(
                height: 125,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          height: 91,
                          width: double.infinity,
                          child: Image.asset(
                            imageList[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

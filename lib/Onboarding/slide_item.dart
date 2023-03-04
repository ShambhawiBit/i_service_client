import 'package:flutter/material.dart';
import 'model/slide.dart';


class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              height: 300,
              width: _mediaQuery.size.width*1,

              // child:Padding(
              //   padding: EdgeInsets.fromLTRB(40, 50, 40, 50),
              //   child: FittedBox(child: Image.asset(slideList[index].imageUrl,fit:BoxFit.cover,),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage((slideList[index].imageUrl),
                    ),
                  ),
                ),
              // ),
            ),

            Padding(
                padding: EdgeInsets.only(left: 30,right: 30,top: 40),
           child: Container(
              color: Color(0xffFFFFFF),
              child: Column(
                  children:[
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text( slideList[index].title,
                        style: TextStyle(fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,color: Color(0xff000000),fontSize: 20),),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:40,right: 40,bottom: 16),
                      child: Container(
                        // margin: EdgeInsets.only(left: 50,right: 50),
                        child: Text( slideList[index].description,
                          style: TextStyle(fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,color: Color(0xff000000),fontSize: 14),textAlign: TextAlign.center,),
                      ),
                    ),
                  ]
              ),
            ),
            ),

          ],
        ),
      ),
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child:slideList[index].container,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}

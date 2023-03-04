import 'package:flutter/material.dart';
import 'package:i_service_client/Onboarding/Onboarding1.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;
  final Container container;
  // final String button2;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.container,
  });
}

final slideList = [
  Slide(
      imageUrl: 'assets/images/onboarding1.png',
      title: 'Book a repair',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum augue ex, a feugiat libero porttitor vel',
      container:
      Container(
        color: Color(0xffFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

         Padding(
         padding: const EdgeInsets.only(left: 33),
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffFFFFFF),
             elevation: 4,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
            side: BorderSide(color: Color(0xffEE610F))),

            minimumSize: Size(150,50), //////// HERE
),
            onPressed: () {
            },
              child: Text('Skip',
                style: TextStyle(color: Color(0xffEE610F),
                    fontSize:14,fontWeight: FontWeight.w400),),
)
),
            Padding(
                padding: const EdgeInsets.only(left: 33),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEE610F),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                       ),

                    minimumSize: Size(150,50), //////// HERE
                  ),
                  onPressed: () {
                  },
                  child: Text('Next',
                    style: TextStyle(color: Color(0xffFAFCFC),
                        fontSize:14,fontWeight: FontWeight.w400),),
                )
            )

          ],
        ),
      )
  ),
  Slide(
    imageUrl: 'assets/images/onboarding2.png',
    title: 'Purchase parts',
    description: ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum augue ex, a feugiat libero porttitor vel.',
      container:
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Padding(
                padding: const EdgeInsets.only(left: 33),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFFFFF),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        side: BorderSide(color: Color(0xffEE610F))),

                    minimumSize: Size(150,50), //////// HERE
                  ),
                  onPressed: () {
                  },
                  child: Text('Skip',
                    style: TextStyle(color: Color(0xffEE610F),
                        fontSize:14,fontWeight: FontWeight.w400),),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(left:33),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEE610F),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),

                    minimumSize: Size(150,50), //////// HERE
                  ),
                  onPressed: () {
                  },
                  child: Text('Next',
                    style: TextStyle(color: Color(0xffFAFCFC),
                        fontSize:14,fontWeight: FontWeight.w400),),
                )
            )

          ],
        ),
      )
  ),
  Slide(
    imageUrl: 'assets/images/onboarding3.png',
    title: 'Get best offers',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum augue ex, a feugiat libero porttitor vel.',
      container:
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 33),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffEE610F),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),

                    minimumSize: Size(150,50), //////// HERE
                  ),
                  onPressed: () {
                  },
                  child: Text('Get Started',
                    style: TextStyle(color: Color(0xffFAFCFC),
                        fontSize:14,fontWeight: FontWeight.w400),),
                )
            )

          ],
        ),
      )
  ),
];
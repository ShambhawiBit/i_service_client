import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Category/cat.dart';
import '../Category/category_grid.dart';
class frame extends StatefulWidget {
  const frame({Key? key}) : super(key: key);

  @override
  State<frame> createState() => _frameState();
}

class _frameState extends State<frame> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffF5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 56,right: 20,left: 24),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 56,left: 24,right: 84),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Hi Rishabh,",style:TextStyle(
                                color: Color(0xeff000000),
                                fontSize: 14,fontWeight: FontWeight.w400),),

                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.waving_hand,size: 8,color: Colors.yellow,),
                          ],
                        ),
                        Text("What would you like to do?",style:TextStyle(
                            color: Color(0xeff000000),
                            fontSize: 20,fontWeight: FontWeight.w600))
                      ],
                    ),
                    // ),

                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          shape: BoxShape.circle
                      ),
                      child:Image.asset("assets/images/profile2.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,bottom: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: (){

                      },
                    ),
                    hintText:'Search for services or parts',
                    contentPadding: EdgeInsets.all(15),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: Container(
                  height: 200,
                  width:_mediaQuery.size.width*1 ,
                  decoration: BoxDecoration(
                    color: Color(0xffFFF0E7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16,top: 16),
                            child: Text("10% OFF",style: TextStyle(
                                color: Color(0xeff000000),
                                fontSize: 16,fontWeight: FontWeight.w600
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16,top: 16),
                            child: Text("on first mobile repair",style: TextStyle(
                                color: Color(0xeff000000),
                                fontSize: 14,fontWeight: FontWeight.w400
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16,top: 16),
                            child: Text("service",style: TextStyle(
                                color: Color(0xeff000000),
                                fontSize: 14,fontWeight: FontWeight.w400
                            ),),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 13,right: 15,bottom: 13),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffEE610F),
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32.0)),
                                  minimumSize: Size(150,50), //////// HERE
                                ),
                                onPressed: () {},
                                child: Text('view offer',style: TextStyle(
                                    color: Color(0xeffFAFCFC),
                                    fontSize: 14,fontWeight: FontWeight.w400
                                ),),
                              )
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12,top: 16,bottom: 16),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.9,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF0E7),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Image.asset("assets/images/Mobile_repair.png",),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Color(0xffEE610F),
                          shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Color(0xffFFD4BC),
                          shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFD4BC)
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:24,right: 24,top: 26,bottom: 32),
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffFFFFFF)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16,top: 16,right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Book Services For Others",
                              style: TextStyle( color: Color(0xeff000000),
                                  fontSize: 16,fontWeight: FontWeight.w600
                              ),),
                            Icon(Icons.info_outline,size: 20,color: Color(0xffEE610F),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16,right: 70,bottom: 16),
                        child: Text("Lorem ipsum dolor sit amet, consectur"
                            " adipiscing elit. Donec dictum augue ex,"
                            " a feugiat libero porttitor vel",textAlign: TextAlign.left,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:16,bottom: 16),
                        child: Text("Book Now",style:TextStyle( color: Color(0xeffEE610F),
                          fontSize: 16,fontWeight: FontWeight.w700,decoration: TextDecoration.underline,
                        ),),
                      )
                    ],

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 24,bottom: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Service Categories",
                      style:TextStyle( color: Color(0xeff000000),
                        fontSize: 16,fontWeight: FontWeight.w600,
                      ),),

                    Text("See all",
                      style:TextStyle( color: Color(0xeffEE610F),
                        fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,
                      ),)
                  ],
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: const [
              //     cat_grid(title: 'image',category: 'Mobile Repair'),
              //     SizedBox(width: 10,),
              //     cat_grid(title: 'image',category: 'Television Repair'),
              //   ],
              // ),
              // const SizedBox(height: 16,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: const [
              //     cat_grid(title: 'image',category: 'Camera Repair'),
              //     SizedBox(width: 10,),
              //     cat_grid(title: 'image',category: 'Printer Repair'),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: cat(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,bottom: 16,top: 24,right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Buy parts for your mobile",
                      style:TextStyle( color: Color(0xeff000000),
                        fontSize: 16,fontWeight: FontWeight.w600,
                      ),),

                    Text("See all",
                      style:TextStyle( color: Color(0xeffEE610F),
                        fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,
                      ),)
                  ],
                ),
              ),
              SizedBox(
                height: 60,
             child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height:83 ,
                  width: 105,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Image.asset("assets/images/apple.png",height: 56,width: 56,),
                ),
                Container(
                  height:83 ,
                  width: 105,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Image.asset("assets/images/samsung.png",height: 56,width: 56,),
                ),
                Container(
                  height:83 ,
                  width: 105,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.grey,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Image.asset("assets/images/nokia.png",height: 56,width: 56,),
                )
              ],
              ),
      ),
              Padding(
                padding: const EdgeInsets.only(left: 24,bottom: 16,top: 32,right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Buy parts for your television",
                      style:TextStyle( color: Color(0xeff000000),
                        fontSize: 16,fontWeight: FontWeight.w600,
                      ),),

                    Text("See all",
                      style:TextStyle( color: Color(0xeffEE610F),
                        fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,
                      ),)
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Image.asset("assets/images/sony.png",height: 56,width: 56,),
                    ),
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Image.asset("assets/images/samsung.png",height: 56,width: 56,),
                    ),
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Image.asset("assets/images/hinese.png",height: 56,width: 56,),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,bottom: 16,top: 32,right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Buy parts for your camera",
                      style:TextStyle( color: Color(0xeff000000),
                        fontSize: 16,fontWeight: FontWeight.w600,
                      ),),

                    Text("See all",
                      style:TextStyle( color: Color(0xeffEE610F),
                        fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,
                      ),)
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],

                      ),
                      child: Image.asset("assets/images/sony.png",height: 56,width: 56,),
                    ),
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                        color: Color(0xffFFFFFF),
                      ),
                      child: Image.asset("assets/images/panasonic.png",height: 56,width: 56,),
                    ),
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                        color: Color(0xffFFFFFF),
                      ),
                      child: Image.asset("assets/images/canon.png",height: 56,width: 56,),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,bottom: 16,top: 32,right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Buy parts for your printer",
                      style:TextStyle( color: Color(0xeff000000),
                        fontSize: 16,fontWeight: FontWeight.w600,
                      ),),

                    Text("See all",
                      style:TextStyle( color: Color(0xeffEE610F),
                        fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,
                      ),)
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Image.asset("assets/images/hp.png",height: 56,width: 56,),
                    ),
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                        color: Color(0xffFFFFFF),
                      ),
                      child: Image.asset("assets/images/panasonic.png",height: 56,width: 56,),
                    ),
                    Container(
                      height:83 ,
                      width: 105,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                        color: Color(0xffFFFFFF),
                      ),
                      child: Image.asset("assets/images/canon.png",height: 56,width: 56,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffDEDED),
        items:  [
          BottomNavigationBarItem(
            label:'Home',
            icon: Icon(Icons.home_outlined,color: Color(0xffEE610F),),


          ),
          BottomNavigationBarItem(
            label:'Categories',
            icon: Icon(Icons.book_outlined,color: Color(0xff000000)),
          ),
          BottomNavigationBarItem(
            label:'Cart',
            icon: Icon(Icons.local_offer_outlined,color: Color(0xff000000)),

          ),
          BottomNavigationBarItem(
            label:'Account',
            icon: Icon(Icons.payment_outlined,color: Color(0xff000000)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_rounded,color: Color(0xff000000)),
            label: 'Settings',

          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Signuptwo extends StatefulWidget {
  const Signuptwo({Key? key}) : super(key: key);

  @override
  State<Signuptwo> createState() => _SignuptwoState();
}

class _SignuptwoState extends State<Signuptwo> {

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 187,
                width:_mediaQuery.size.width*1 ,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/login.png"),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:29,right: 280,top:29,bottom: 16),
                child: Container(
                    height: 30,
                    width:_mediaQuery.size.width*1,
                    child: Text("Sign Up",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat'))),
              ),

              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 24,right: 24),
                    child: Text('Full Name',
                      style:TextStyle(
                          color: Color(0xeff423D35),
                          fontSize: 12,fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(padding:EdgeInsets.only(left: 24,right: 24),
                    child:TextField(
                      decoration: InputDecoration(
                          hintText: "Rishab Kapoor",
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),

                  const SizedBox(
                    height: 38,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24,right: 24),
                    child: Text('Email Address',
                      style:TextStyle(
                          color: Color(0xeff423D35),
                          fontSize: 12,fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24,right: 24),
                    child:TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'rishabboor@gmail.com',
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 24,right: 24),
                    child: Text('Password',
                      style:TextStyle(
                          color: Color(0xeff423D35),
                          fontSize: 12,fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24,right: 24),
                    child:TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: '*****',
                          suffixIcon: Icon(Icons.remove_red_eye),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 41,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 15,right: 15),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[

                        Padding(
                          padding: const EdgeInsets.only(left: 24,right: 19.5,bottom: 27.5),
                          child: Icon(Icons.crop_square_outlined),
                        ),
                        SizedBox(
                          width: 19.5,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                Text('I agree to I service’s',
                                  style: TextStyle(fontWeight: FontWeight.w400,
                                      fontFamily: 'Montserrat',color: Color(0xff000000)),
                                ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Text('terms of use',
                                      style: TextStyle(fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat',
                                          decoration: TextDecoration.underline,
                                          color: Color(0xffEE610F),decorationColor:Color(0xffEE610F) ),
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Text('and',
                                      style: TextStyle(fontWeight: FontWeight.w400,
                                          fontFamily: 'Montserrat'),
                                    ),

                               ]
                                ),
                                Text('privacy condition',
                                  style: TextStyle(fontWeight: FontWeight.w400,
                                      fontFamily: 'Montserrat',
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xffEE610F),color:Color(0xff0EE610F)),
                                ),
                              ],
                            ),
                          ),
                        )


                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 24,right: 24,bottom: 24),
                      child: ElevatedButton(
                        child: Text('Get Started',
                          style: TextStyle(fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',color: Color(0xffFFFFFF),fontSize: 14),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffEE610F),
                          minimumSize: const Size.fromHeight(40),
                          //side: BorderSide(color: Colors.yellow, width: 5
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)
                          ),
                        ),
                        onPressed: (){

                        },
                      )
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                        style: TextStyle(fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',color: Color(0xff0A151F),fontSize: 14),
                      ),
                      Text('Log In',
                        style: TextStyle(fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline,color: Color(0xffEE610F),decorationColor:Color(0xffEE610F) ,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),





            ],
          ),
        )
    );
  }
}

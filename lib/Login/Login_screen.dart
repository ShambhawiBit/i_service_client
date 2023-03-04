import 'package:flutter/material.dart';
import 'cardbox.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  int selectedValue=0;
  bool isVisibility=true;
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
                color: Color(0xffEDEDED),
                child: Center(child: Text("IIlustration",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontFamily: 'Montserrat'),)),
              ),

              Padding(
                padding: const EdgeInsets.only(left:29,right: 280,top:29,bottom: 16),
                child: Container(
                    height: 30,
                    width:_mediaQuery.size.width*1,
                    child: Text("Login",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat'))),
              ),

              SizedBox(
                height: 16,
              ),



              Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Radio(
                              value: 1,
                              groupValue: selectedValue,
                              fillColor: MaterialStateProperty.resolveWith((states) => Colors.black),
                              onChanged: (value) {
                                setState(() {
                                  selectedValue=1;
                                  isVisibility=false;
                                });
                              }),
                        ),
                        Text('Client',style: TextStyle(fontWeight:FontWeight.w600,fontSize: 16),)
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),

                    Row(
                      children: [
                        Radio(
                            value: 2,
                            groupValue: selectedValue,
                            fillColor: MaterialStateProperty.resolveWith((states) => Colors.black),
                            onChanged: (value) {
                              setState(() {
                                selectedValue=2;
                                isVisibility=true;
                              });
                            }),

                        Text('Dealer',style: TextStyle(fontWeight:FontWeight.w600,fontSize: 16),)
                      ],
                    ),
                  ]
              ),
              Visibility(
                  visible:(isVisibility!=false)?true:false,
                  child:Column(
                    children: [
                      cardbox(),
                    ],
                  )
              ),

              Visibility(
                visible:(isVisibility!=true)?true:false,
                child: Text("Hiiiii"),
              ),

            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
class logintwo extends StatefulWidget {
  const logintwo({Key? key}) : super(key: key);

  @override
  State<logintwo> createState() => _logintwoState();
}

class _logintwoState extends State<logintwo> {
  bool passwordVisible=false;
  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }
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
                    child: Text("Login",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat'))),
              ),

              SizedBox(
                height: 24,
              ),


              Padding(
                padding: EdgeInsets.only(left: 24,right: 24),
                child: Text(' Email Address',
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
                      hintText: "rishabboor@gmail.com",
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),

              const SizedBox(
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
                padding:EdgeInsets.only(left: 24,right: 24),
                child: TextField(
                  //obscureText: passwordVisible,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "********",

                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?",
                      style:TextStyle(

                          fontSize: 12,fontWeight: FontWeight.w500,fontFamily: "Montserrat",
                          decoration: TextDecoration.underline ,
                          color: Color(0xeffEE610F),decorationColor: Color(0xffEE610F)),)
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 7,left: 15,right: 15),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[

                    Padding(
                      padding: const EdgeInsets.only(left: 24,right: 19.5,bottom: 27.5),
                      child: Icon(Icons.crop_square_outlined),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 27.5),
                      child: Text('Remember me',
                        style: TextStyle(fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',color: Color(0xff0A151F)),
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: 32,
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

              Padding(
                padding: const EdgeInsets.only(bottom: 107),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat',color: Color(0xff0A151F),fontSize: 14),
                    ),

                    Text('Sign Up',
                      style: TextStyle(fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline,
                          decorationColor:Color(0xffEE610F) ,color: Color(0xffEE610F),
                          fontSize: 14),
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}

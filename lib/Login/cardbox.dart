import 'package:flutter/material.dart';
class cardbox extends StatefulWidget {
  const cardbox({Key? key}) : super(key: key);

  @override
  State<cardbox> createState() => _cardboxState();
}

class _cardboxState extends State<cardbox> {
  bool passwordVisible=false;
  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
            child: Text('Dealer’s Email Address',
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
          // Padding(
          //   padding: EdgeInsets.only(left: 24,right: 24),
          //   child:TextField(
          //     obscureText: true,
          //     decoration: InputDecoration(
          //         hintText: '*****',
          //         suffixIcon: Icon(Icons.remove_red_eye),
          //         border:OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(10))),
          //   ),
          // ),
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
                      color: Color(0xeff000000),
                      fontSize: 12,fontWeight: FontWeight.w500,fontFamily: "Montserrat",
                      decoration: TextDecoration.underline),)
              ],
            ),
          ),
          SizedBox(
            height: 62,
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
                SizedBox(
                  width: 3.5,
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
                  primary: Color(0xff1C1B1F),
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
                      fontFamily: 'Montserrat',color: Color(0xff0A151F),
                      decoration: TextDecoration.underline,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

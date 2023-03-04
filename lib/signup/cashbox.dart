import 'package:flutter/material.dart';
class CashBox extends StatefulWidget {
  const CashBox({Key? key}) : super(key: key);

  @override
  State<CashBox> createState() => _CashBoxState();
}

class _CashBoxState extends State<CashBox> {
  @override
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('I agree to I service’s terms of use and',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                    Text('privacy condition',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',color:Color(0xff0A151F),
                          decoration: TextDecoration.underline),
                    ),
                  ],
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
            padding: const EdgeInsets.only(left: 90,right: 65,bottom: 107),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Already have an account?',
                  style: TextStyle(fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat',color: Color(0xff0A151F),fontSize: 14),
                ),
                Text('Log In',
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

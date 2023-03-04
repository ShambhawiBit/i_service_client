import 'package:flutter/material.dart';
class profile_dilog extends StatefulWidget {
  const profile_dilog({Key? key}) : super(key: key);

  @override
  State<profile_dilog> createState() => _profile_dilogState();
}

class _profile_dilogState extends State<profile_dilog> {
  bool passwordVisible=false;
  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xffFFFFFF),
      insetPadding: EdgeInsets.only(left: 16,right: 16,top: 200,bottom: 45),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),

      child: Container(
        width: double.infinity,
        height: 380,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Change password",
                    style: TextStyle(fontSize: 16,
                        fontFamily: 'Montserrat',fontWeight: FontWeight.w600,color: Color(0xff000000)
                    ),
                  ),
                  Icon(Icons.close,size: 12.7,color: Color(0xff1C1B1F),)
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 24,right: 115),
              child: Text('Old Password',
                style:TextStyle(
                    color: Color(0xeff000000),
                    fontSize: 14,fontWeight: FontWeight.w400),
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
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 115),
              child: Text('New Password',
                style:TextStyle(
                    color: Color(0xeff000000),
                    fontSize: 14,fontWeight: FontWeight.w400),
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
            Padding(
                padding: const EdgeInsets.all(24),
                child: ElevatedButton(
                  child: Text('Save Changes',
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

          ],
        ),
      ),
    );
  }
}

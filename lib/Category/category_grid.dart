import 'package:flutter/material.dart';
class cat_grid extends StatelessWidget {
  final String title;
  final String category;
  const cat_grid ({super.key, required this.title, required this.category});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,width: MediaQuery.of(context).size.width*0.36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Container(
          height: 110,width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
          ),
          child: Center(child:Text(
            title,
            style: const TextStyle(
                fontSize: 18,color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w600),
          ),
          ),
        ),
        Container(
          height: 40,width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
          ),child: Center(child:Text(
          category,
          style: const TextStyle(
              fontSize: 14,color: Color.fromRGBO(64, 65, 66, 1), fontWeight: FontWeight.w400),
        ),
        ),
        )
      ],),
    );
  }
}


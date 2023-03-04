import 'package:flutter/material.dart';

import 'gridView.dart';
class buyParts extends StatefulWidget {
  const buyParts({Key? key}) : super(key: key);

  @override
  State<buyParts> createState() => _buyPartsState();
}

class _buyPartsState extends State<buyParts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Gridview(),
      ),
    );
  }
}

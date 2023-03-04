import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_service_client/Onboarding/slide_dots.dart';
import 'package:i_service_client/Onboarding/slide_item.dart';
import 'model/slide.dart';
class page_controller extends StatefulWidget {
  const page_controller({Key? key}) : super(key: key);

  @override
  State<page_controller> createState() => _page_controllerState();
}

class _page_controllerState extends State<page_controller> {
  @override
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[

                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    itemCount: slideList.length,
                    itemBuilder: (ctx, i) => SlideItem(i),
                  ),
                  Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Positioned(
                          top: 500,
                          left: 40,
                          right: 40,

                          child: Container(
                            margin: EdgeInsets.only(bottom: 500,),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                for(int i = 0; i<slideList.length; i++)
                                  if( i == _currentPage )
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

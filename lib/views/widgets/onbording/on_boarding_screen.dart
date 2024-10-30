import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import '../../../shared/theme/assets.dart';
import '../../../shared/theme/colors.dart';
import 'widgets/slide.dart';
import 'widgets/slide_dotes.dart';
import 'widgets/slide_items.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  final slideList = [
    Slide(
      image: KAssets.onb_1,
      desc: "Lorem ipsum dolor sit amet, consectetur adipiscing",
      title: "Offer your services to others",
    ),
    Slide(
      image: KAssets.onb_2,
      title: "Explore more different areas",
      desc: "Lorem ipsum dolor sit amet, consectetur adipiscing",
    ),
    Slide(
      image: KAssets.onb_3,
      title: "Connect with your best friends",
      desc: "Lorem ipsum dolor sit amet, consectetur adipiscing",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                _currentPage = index;
                setState(() {});
              },
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              itemCount: slideList.length,
              itemBuilder: (context, i) => SlideItems(slideList[i]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      slideList.length,
                      (i) => i == _currentPage ? const SlideDotes(true) : const SlideDotes(false),
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(const Size(0, 0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
                    backgroundColor: MaterialStateProperty.all<Color>(KColors.of(context).accentColor),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10.0)),
                  ),
                  onPressed: () async {
                    if (_currentPage == slideList.length - 1) {

                    } else {
                      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOutCubic);
                    }
                  },
                  child: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 25.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

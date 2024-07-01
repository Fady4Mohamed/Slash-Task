import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/dot_indecator.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/scroll_item.dart';

class HorizontalScrollList extends StatefulWidget {
  @override
  _HorizontalScrollListState createState() => _HorizontalScrollListState();
}

class _HorizontalScrollListState extends State<HorizontalScrollList> {
  final PageController _pageController = PageController();
  Timer? timer;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      //3 => (4-1)
      if (currentPage < 3) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(left: 18.w),
      width:350 ,
      height: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: [
              ScrollListItem(),
               ScrollListItem(),
                ScrollListItem(),
                 ScrollListItem(),
            ],
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
          ),
        ),
         DotIndecatorLayer(currentPage: currentPage),
      ]),
    );
  }
}

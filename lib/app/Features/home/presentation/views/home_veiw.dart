import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/home_view_boody.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/nave_bar.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
          child: Column(
            children: [
              SizedBox(
                height: 690.h,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const HomeAppBar(),
                      SizedBox(
                        height: 20.h,
                      ),
                     const HomeViewBoody(),
                    ],
                  ),
                ),
              ),
             const NaveBar()
            ],
          ),
        ),
      ),
    );
  }
}

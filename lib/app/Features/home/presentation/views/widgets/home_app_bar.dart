

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/core/utils/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      Text('Slash.', style: MyTextStyles.textStyle20black700,),
      const Spacer(flex: 2,),
      Image.asset('assets/image/location.png',height: 24.h,),
      SizedBox(width: 8.w,),
      SizedBox(height: 43.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nasr City',style: MyTextStyles.textStyle14black400,),
          Text('cairo',style: MyTextStyles.textStyle14black700,)
        ],
      ),
      ),
      SizedBox(width: 8.w,),
      Icon(Icons.keyboard_arrow_down,size: 30.h,),
      const Spacer(flex: 3,),
      Image.asset('assets/image/Notifcation Icon.png',height: 30.h,),
      
     ],
    );
  }
}
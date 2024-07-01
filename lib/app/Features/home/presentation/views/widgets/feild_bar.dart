
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/core/utils/styles.dart';

class FeildBar extends StatelessWidget {
  const FeildBar({
    super.key, required this.name,
  });
 final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name, style: MyTextStyles.textStyle22black600),
        const Spacer(),
        Text('see all', style: MyTextStyles.textStyle14black400),
        SizedBox(
      width: 10.w,
    ),
        Container(
          height: 21.h,
          child: Icon(Icons.arrow_forward_ios_outlined,size: 15.h,),
          decoration: BoxDecoration(
              color: const Color(0xffE6E6E6),
              borderRadius: BorderRadius.circular(2)),
        ),  SizedBox(
      width: 10.w,
    ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key, required this.name, required this.image,
  });
final String name;
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 18.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 33.h,
            backgroundColor: const Color(0xff292929),
            child: Image.asset(
              image,
              width: 34,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            name,
            style: MyTextStyles.textStyle14black400,
          )
        ],
      ),
    );
  }
}

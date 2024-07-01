
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/core/utils/styles.dart';

class NaveItem extends StatelessWidget {
  const NaveItem({
    super.key, required this.name, required this.image,
  });
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image,height: 35.h,),
        Text(name,style:name=='Home'? MyTextStyles.textStyle14black700:MyTextStyles.textStyle14black400 ,)
      ],
    );
  }
}

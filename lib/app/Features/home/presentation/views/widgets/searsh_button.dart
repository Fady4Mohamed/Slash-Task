
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/core/utils/styles.dart';

class SearshButton extends StatelessWidget {
  const SearshButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Spacer(),
       GestureDetector(
         onTap: () {
           // go to searsh view
         },
         child: Container(
           height:45 ,
           width: 280,
           decoration: BoxDecoration(
             color:const Color.fromARGB(98, 171, 168, 168),
             borderRadius: BorderRadius.circular(12)
           ),
           child: Row(
             children: [
               SizedBox(width: 20.w,),
             Image.asset('assets/image/search-normal.png',height: 22,),
             SizedBox(width: 10.w,),
             Text('Search here..',style: MyTextStyles.textStyle14black400.copyWith(color: const Color(0xff969696)),),
           ],),
         ),
       ),
        SizedBox(width: 20.w,),
       Container(
         height:45 ,
         width: 47,
         decoration: BoxDecoration(
           color:const Color.fromARGB(98, 171, 168, 168),
           borderRadius: BorderRadius.circular(12)
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Image.asset('assets/image/filter.png',height: 22,),
         ],),
       ),
       const Spacer(),
     ],
    );
  }
}
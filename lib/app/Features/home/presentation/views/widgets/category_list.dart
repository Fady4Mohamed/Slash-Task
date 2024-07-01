import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 93.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:const [
           CategoryItem(
            image: 'assets/image/Shirt.png',
            name: 'Fashion',
          ),
          
          CategoryItem(
            image: 'assets/image/Dice.png',
            name: 'Games',
          ),
          CategoryItem(
            image: 'assets/image/Glasses.png',
            name: 'Accessories',
          ),
          CategoryItem(
            image: 'assets/image/Book Blank.png',
            name: 'Books',
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/Features/home/presentation/manger/best%20recommended%20cubit/fetch_best_recommended_cubit.dart';
import 'package:slashtask/app/Features/home/presentation/manger/best%20selling%20cubit/fetch_best_selling_cubit.dart';
import 'package:slashtask/app/Features/home/presentation/manger/new%20arrival%20cubit/fetch_new_arrival_cubit.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/category_list.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/feild_bar.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/horizontal_scrollList.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/product_list.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/searsh_button.dart';

class HomeViewBoody extends StatelessWidget {
  const HomeViewBoody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearshButton(),
        SizedBox(
          height: 22.h,
        ),
        HorizontalScrollList(),
        SizedBox(
          height: 12.h,
        ),
        const FeildBar(
          name: 'Categories',
        ),
        SizedBox(
          height: 10.h,
        ),
        const CategoryList(),
        SizedBox(
          height: 22.h,
        ),
        const FeildBar(
          name: 'Best Selling',
        ),
        SizedBox(
          height: 12.h,
        ),
        BlocBuilder<FetchBestSellingCubit, FetchBestSellingState>(
          builder: (context, state) {
            return ProductList(products: BlocProvider.of<FetchBestSellingCubit>(context).bestSellingproducts,);
          },
        ),
        SizedBox(
          height: 22.h,
        ),
        const FeildBar(
          name: 'New Arrival',
        ),
        SizedBox(
          height: 12.h,
        ),
       BlocBuilder<FetchNewArrivalCubit, FetchNewArrivalState>(
          builder: (context, state) {
            return ProductList(products: BlocProvider.of<FetchNewArrivalCubit>(context).newArrivalproducts,);
          },
        ),
        SizedBox(
          height: 22.h,
        ),
        const FeildBar(
          name: 'Recommended for you',
        ),
        SizedBox(
          height: 12.h,
        ),
       BlocBuilder<FetchBestRecommendedCubit, FetchBestRecommendedState>(
          builder: (context, state) {
            return ProductList(products: BlocProvider.of<FetchBestRecommendedCubit>(context).Recommendedproducts,);
          },
        ),
      ],
    );
  }
}

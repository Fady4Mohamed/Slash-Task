import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/Features/home/presentation/manger/best%20recommended%20cubit/fetch_best_recommended_cubit.dart';
import 'package:slashtask/app/Features/home/presentation/manger/best%20selling%20cubit/fetch_best_selling_cubit.dart';
import 'package:slashtask/app/Features/home/presentation/manger/new%20arrival%20cubit/fetch_new_arrival_cubit.dart';
import 'package:slashtask/app/Features/home/presentation/views/home_veiw.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchNewArrivalCubit()..fetchNewArrival(),
        ),
        BlocProvider(
          create: (context) => FetchBestSellingCubit()..fetchBestSelling(),
        ),
        BlocProvider(
          create: (context) => FetchBestRecommendedCubit()..fetchBestRecommended(),
        ),
      ],
          child: const HomeVeiw(),
        ),
      ),
    );
  }
}

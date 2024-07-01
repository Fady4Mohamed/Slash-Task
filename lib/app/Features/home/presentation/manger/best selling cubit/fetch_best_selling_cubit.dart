import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slashtask/app/Features/home/data/repo/home_repo_implementation.dart';
import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';
import 'package:slashtask/app/Features/home/domain/Use%20Case/fech_best_selling_use_case.dart';

part 'fetch_best_selling_state.dart';

class FetchBestSellingCubit extends Cubit<FetchBestSellingState> {
  FetchBestSellingCubit() : super(FetchBestSellingInitial());
  FetchBestSellingUseCase fetchBestSellingUseCase =
      FetchBestSellingUseCase(HomeRepoImplementation());
  List<ProductEntityModel> bestSellingproducts = [];
  void fetchBestSelling() {
    bestSellingproducts.clear();
    bestSellingproducts.addAll(fetchBestSellingUseCase.call());
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slashtask/app/Features/home/data/repo/home_repo_implementation.dart';
import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';
import 'package:slashtask/app/Features/home/domain/Use%20Case/fetch_best_recommended.dart';

part 'fetch_best_recommended_state.dart';

class FetchBestRecommendedCubit extends Cubit<FetchBestRecommendedState> {
  FetchBestRecommendedCubit() : super(FetchBestRecommendedInitial());
  FetchBestRecommendedUseCase fetchBestRecommendedUseCase =
      FetchBestRecommendedUseCase(homeRepo: HomeRepoImplementation());
  List<ProductEntityModel> Recommendedproducts = [];
  void fetchBestRecommended() {
    Recommendedproducts.clear();
    Recommendedproducts.addAll(fetchBestRecommendedUseCase.call());
  }
}

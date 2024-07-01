import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slashtask/app/Features/home/data/repo/home_repo_implementation.dart';
import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';
import 'package:slashtask/app/Features/home/domain/Use%20Case/fetch_new_arrival_use_case.dart';

part 'fetch_new_arrival_state.dart';

class FetchNewArrivalCubit extends Cubit<FetchNewArrivalState> {
  FetchNewArrivalCubit() : super(FetchNewArrivalInitial());
  FetchNewArrivalUseCase fetchNewArrivalUseCase =
      FetchNewArrivalUseCase(homeRepo: HomeRepoImplementation());
  List<ProductEntityModel> newArrivalproducts = [];
  void fetchNewArrival() {
    newArrivalproducts.clear();
    newArrivalproducts.addAll(fetchNewArrivalUseCase.call());
  }
}

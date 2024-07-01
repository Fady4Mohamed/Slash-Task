import 'package:slashtask/app/Features/home/data/repo/home_repo_implementation.dart';
import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';
import 'package:slashtask/app/Features/home/domain/Use%20Case/use_case.dart';

class FetchNewArrivalUseCase  extends UseCase<List<ProductEntityModel>, Null> {
  final HomeRepoImplementation homeRepo;

  FetchNewArrivalUseCase({required this.homeRepo});


  @override
   List<ProductEntityModel> call([Null Never])  {
    return  homeRepo.fetchNewArrival();
  }
}
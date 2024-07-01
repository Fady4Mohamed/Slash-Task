import 'package:slashtask/app/Features/home/data/repo/home_repo_implementation.dart';
import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';
import 'package:slashtask/app/Features/home/domain/Use%20Case/use_case.dart';

class FetchBestRecommendedUseCase extends UseCase<List<ProductEntityModel>, Null> {
  final HomeRepoImplementation homeRepo;

  FetchBestRecommendedUseCase({required this.homeRepo});

  @override
   List<ProductEntityModel> call([Null Never])  {
    return  homeRepo.fetchBestRecommended();
  }
}
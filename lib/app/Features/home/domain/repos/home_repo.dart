import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';

abstract class HomeRepo {
  List<ProductEntityModel> fetchBestSelling();
  List<ProductEntityModel> fetchNewArrival();
  List<ProductEntityModel> fetchBestRecommended();
}

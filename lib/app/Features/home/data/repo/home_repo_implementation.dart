import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';
import 'package:slashtask/app/Features/home/domain/repos/home_repo.dart';

class HomeRepoImplementation extends HomeRepo{
  @override
  List<ProductEntityModel> fetchBestSelling() {
    List<ProductEntityModel> products=[];
   List< Map<String,dynamic>> data =[{
      "id": 1,
      "name": "Stitch Keychain",
      "price": 55,
      "image": "assets/image/best selling image 1.png"
    },
    {
      "id": 2,
      "name": "Baby Girl Dress",
      "price": 150,
      "image": "assets/image/best selling image 2.png"
    },
    {
      "id": 3,
      "name": "Infant Hair Clips",
      "price": 90,
      "image": "assets/image/best selling image 3.png"
    },
    {
      "id": 4,
      "name": "Notebook",
      "price": 33,
      "image": "assets/image/New Arrival imge 2.png"
    },
    {
      "id": 5,
      "name": "Woolen Scarf",
      "price": 24.99,
      "image": "assets/image/New Arrival imge 3.png"
    }];
    for (var product in data) {
      products.add(ProductEntityModel.fromjson(product));
    }
    return products ;
  }
  
  @override
  List<ProductEntityModel> fetchNewArrival(){
       List<ProductEntityModel> products=[];
   List< Map<String,dynamic>> data =[{
      "id": 1,
      "name": "Notebook",
      "price": 34.99,
      "image": "assets/image/New Arrival imge 2.png"
    },
    {
      "id": 2,
      "name": "Woolen Scarf",
      "price": 54.99,
      "image": "assets/image/New Arrival imge 3.png"
    },
    {
      "id": 3,
      "name": "Printed bag",
      "price": 21.99,
      "image": "assets/image/New Arrival imge 1.png"
    },
    {
      "id": 4,
      "name": "RLeather Jacket",
      "price": 42.99,
      "image": "assets/image/Recommended for you imge 1.png"
    },
    {
      "id": 5,
      "name": "Dog Medal",
      "price": 29.49,
      "image": "assets/image/Recommended for you imge 2.png"
    }];
    for (var product in data) {
      products.add(ProductEntityModel.fromjson(product));
    }
    return products ;}
  
  @override
  List<ProductEntityModel>fetchBestRecommended() {
      List<ProductEntityModel> products=[];
   List< Map<String,dynamic>> data =[ {
      "id": 1,
      "name": "RLeather Jacket",
      "price": 27.99,
      "image": "assets/image/Recommended for you imge 1.png"
    },
    {
      "id": 2,
      "name": "Dog Medal",
      "price": 47.99,
      "image": "assets/image/Recommended for you imge 2.png"
    },
    {
      "id": 3,
      "name": "Leather Bracelet",
      "price": 18.99,
      "image": "assets/image/Recommended for you imge 3.png"
    }];
    for (var product in data) {
      products.add(ProductEntityModel.fromjson(product));
    }
    return products ; }
}
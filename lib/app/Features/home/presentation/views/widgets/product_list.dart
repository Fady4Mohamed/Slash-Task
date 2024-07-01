
import 'package:flutter/material.dart';
import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/produc_iItem_container.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key, required this.products,
  });
final List<ProductEntityModel> products ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) {
          return ProductItemContainer(product: products[index],);
        },
      ),
    );
  }
}

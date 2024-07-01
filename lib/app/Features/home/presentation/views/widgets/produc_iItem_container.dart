import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slashtask/app/Features/home/domain/Entitys/product_entity_model.dart';
import 'package:slashtask/app/core/utils/styles.dart';

class ProductItemContainer extends StatefulWidget {
  const ProductItemContainer({
    super.key,
    required this.product,
  });
  final ProductEntityModel product;

  @override
  State<ProductItemContainer> createState() => _ProductItemContainerState();
}

class _ProductItemContainerState extends State<ProductItemContainer> {
  bool love = false;
  bool add = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 135.w,
      child: Column(
        children: [
          Container(
            width: 129.w,
            height: 116.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.product.image), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(213, 213, 213, 213),
                      borderRadius: BorderRadius.circular(120)),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          love = !love;
                        });
                      },
                      icon: love
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(Icons.favorite_border)),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                widget.product.name,
                style: MyTextStyles.textStyle16black400,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                  width: 70,
                  child: Text(
                    'EGP ',
                    style: MyTextStyles.textStyle16black700,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
              const Spacer(),
              CircleAvatar(
                radius: 11.h,
                backgroundImage: AssetImage('assets/image/dress prand.png'),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      add = !add;
                    });
                  },
                  icon: add
                      ? Icon(
                          Icons.check_circle,
                          size: 26.h,
                        )
                      : Icon(
                          Icons.add_circle,
                          size: 26.h,
                        ))
            ],
          ),
        ],
      ),
    );
  }
}

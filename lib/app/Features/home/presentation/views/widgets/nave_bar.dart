import 'package:flutter/material.dart';
import 'package:slashtask/app/Features/home/presentation/views/widgets/nave_item.dart';

class NaveBar extends StatelessWidget {
  const NaveBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(height: 6,width: 60,
           decoration: BoxDecoration(
             color: Colors.black,
             borderRadius: BorderRadius.circular(12)
           ),),
        const NaveItem(
              image: 'assets/image/home.png',
              name: 'Home',
            ),
          ],
        ),
        const NaveItem(
          image: 'assets/image/heart.png',
          name: 'Favorites',
        ),
        const NaveItem(
          image: 'assets/image/shopping-cart.png',
          name: 'My Cart',
        ),
        const NaveItem(
          image: 'assets/image/profile-circle.png',
          name: 'Profile',
        ),
      ],
    );
  }
}

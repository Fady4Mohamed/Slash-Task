
import 'package:flutter/material.dart';

class ScrollListItem extends StatelessWidget {
  const ScrollListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 327,
          height: 132,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage('assets/image/Hot Deal 1.png'),fit: BoxFit.cover)
          ),
        ),
        
      ],
    );
  }
}

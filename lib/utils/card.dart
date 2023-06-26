import 'package:baggy/models/produts.dart';
import 'package:baggy/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ItemCard extends StatelessWidget {
  ItemCard({super.key, required this.product, required this.press});
  final Product product;
  // final Function press;
  void Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(KDefaultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.network(product.img),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: KDefaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(color: KTextLightColor),
            ),
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

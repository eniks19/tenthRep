import 'package:baggy/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 32,
          child: MaterialButton(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              onPressed: () {
                setState(() {
                  numOfItems--;
                });
              },
              child: Icon(Icons.remove)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: MaterialButton(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              onPressed: () {
                setState(() {
                  numOfItems++;
                });
              },
              child: Icon(Icons.add)),
        ),
      ],
    );
  }
}

import 'package:baggy/models/produts.dart';
import 'package:baggy/utils/circ.dart';
import 'package:baggy/utils/constanst.dart';
import 'package:baggy/utils/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              )),
          SizedBox(
            width: KDefaultPadding / 2,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: KDefaultPadding,
                        right: KDefaultPadding),
                    //  height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Color'),
                                  Row(
                                    children: [
                                      ColorDot(
                                          color: Color(0xff356C95),
                                          isSelected: true),
                                      ColorDot(
                                        color: Color(
                                          0xfff8C078,
                                        ),
                                        isSelected: false,
                                      ),
                                      ColorDot(
                                        color: Color(0xffA29B9B),
                                        isSelected: false,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(color: KTextColor),
                                      children: [
                                    TextSpan(text: 'Size\n'),
                                    TextSpan(
                                        text: '${product.size} cm',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold))
                                  ])),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: KDefaultPadding),
                          child: Text(
                            product.des,
                            style: TextStyle(height: 1.5),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CartCounter(),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: Color(0xffff5454),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.favorite),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: KDefaultPadding),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: KDefaultPadding),
                                height: 50,
                                width: 58,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(color: product.color)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                        Icons.shopping_cart_checkout_outlined)),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18)),
                                      color: product.color,
                                      onPressed: () {},
                                      child: Text(
                                        'BUY NOW',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aristocratic Handbag',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          product.title,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: KDefaultPadding,
                        ),
                        Row(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'Price\n',
                              ),
                              TextSpan(
                                  text: '\$${product.price}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                            ])),
                            SizedBox(
                              width: KDefaultPadding,
                            ),
                            Expanded(
                                child: Image.network(
                              product.img,
                              fit: BoxFit.fill,
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

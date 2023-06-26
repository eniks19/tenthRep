import 'package:baggy/models/produts.dart';
import 'package:baggy/page/details.dart';
import 'package:baggy/utils/card.dart';
import 'package:baggy/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  List<String> categories = ['Hand Bag', 'Jewellery', 'Footwear', 'Dresses'];
  int selectedindex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
            child: Text(
              'Women',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
            child: SizedBox(
              height: 25,
              child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: KDefaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categories[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selectedindex == index
                                      ? KTextColor
                                      : KTextLightColor),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              height: 2,
                              width: 30,
                              color: selectedindex == index
                                  ? Colors.black
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: KDefaultPadding,
                    crossAxisSpacing: KDefaultPadding),
                itemBuilder: (context, index) {
                  return ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  product: products[index],
                                ))),
                  );
                }),
          ))
        ],
      ),
    );
  }
}

import 'package:ecomm_store/constants.dart';
import 'package:ecomm_store/models/product.dart';
import 'package:ecomm_store/screens/details_page.dart';
import 'package:ecomm_store/widgets/home/product_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                ListView.builder(
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(product: products[index]),
                        ),
                      );
                    },
                  ),
                  itemCount: products.length,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

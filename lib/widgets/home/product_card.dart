import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product, required this.press,
  });
  final int itemIndex;
  final Product product;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 20,
                        color: Colors.black26)
                  ]),
            ),
            Positioned(
              top: -2.0,
              left: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 200,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 35.0,
              left: 40.0,
              child: SizedBox(
                height: 140.0,
                width: size.width - 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(
                        product.title,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Text(
                        product.subTitle,
                        style: const TextStyle(color: Colors.black38),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 5,
                        ),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(22)),
                        child: Text(
                          "price: ${product.price}",
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

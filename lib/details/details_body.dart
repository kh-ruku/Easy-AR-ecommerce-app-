import 'package:ecomm_store/constants.dart';
import 'package:ecomm_store/details/product_image.dart';
import 'package:ecomm_store/models/product.dart';
import 'package:flutter/material.dart';

import 'color_dot.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          // height: 300,
          decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ColorDot(
                      fillColor: kTextColor,
                      isSelect: false,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelect: true,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelect: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                ),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
               Text(
                "السعر: ${product.price}\$"
                ,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    );
  }
}

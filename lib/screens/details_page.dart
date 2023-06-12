import 'package:ecomm_store/constants.dart';
import 'package:ecomm_store/details/details_body.dart';
import 'package:ecomm_store/models/product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
      ),
      title: const Text(
        "رجوع",
        style: TextStyle(color: Colors.black87),
      ),
    );
  }
}

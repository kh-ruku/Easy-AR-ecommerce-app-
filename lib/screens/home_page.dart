import 'package:ecomm_store/constants.dart';
import 'package:ecomm_store/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeAppBar(),
      body: const HomeBody(),
    );
  }
}

// ignore: non_constant_identifier_names
AppBar HomeAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    title: Text(
      "مرحبا بك في متجرنا",
      style: GoogleFonts.cairo(),
    ),
    centerTitle: false,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      )
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Ensure you have this import for SVG support
import 'package:tugas_akhir/models/Product.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tugas_akhir/screens/details/components/body.dart';

// Define kDefaultPaddin if not already defined
const double kDefaultPaddin = 20.0;

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      // You can add more widgets to build the body of the DetailsScreen here
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context), // Corrected the typo here
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}

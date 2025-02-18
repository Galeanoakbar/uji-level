import 'package:flutter/material.dart';
import 'package:tugas_akhir/models/Product.dart';
import 'package:tugas_akhir/screens/details/details_screen.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Galeano",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Categories(),
        SizedBox(height: 20), // Spacer
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(product: products[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

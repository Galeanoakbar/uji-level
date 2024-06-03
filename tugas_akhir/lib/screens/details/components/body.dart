import 'package:flutter/material.dart';
import 'package:tugas_akhir/constant.dart';
import 'package:tugas_akhir/screens/details/components/color_and_size.dart';

import '../../../models/Product.dart';
import 'product_title_with_image.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Color"),
                              Row(
                                children: <Widget>[
                                  ColorDot(
                                    color: Color.fromARGB(255, 245, 237, 14),
                                    isSelected: true,
                                  ),
                                  ColorDot(
                                    color: Color.fromARGB(255, 255, 1, 1),
                                  ),
                                  ColorDot(
                                    color: Color.fromARGB(255, 52, 52, 53),
                                  ),
                                ],
                              )
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: kTextColor),
                              children: [
                                TextSpan(text: "CC\n"),
                                TextSpan(
                                  text: "${widget.product.size}cc",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (_quantity > 1) {
                                  _quantity--;
                                }
                              });
                            },
                          ),
                          Text(
                            "$_quantity",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _quantity++;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Bagian untuk menambahkan produk ke keranjang
                      ElevatedButton(
                        onPressed: () {
                          // Lakukan sesuatu saat tombol ditekan
                          // Misalnya, tambahkan produk ke keranjang
                        },
                        child: Text("Tambahkan ke Keranjang"),
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: widget.product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

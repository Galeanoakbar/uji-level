import 'package:flutter/material.dart';

const kDefaultPadding = 20.0; // Deklarasi konstanta kDefaultPadding

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  // Menggunakan SingleTickerProviderStateMixin
  List<String> categories = ["Jenis", "Jwrllf", "ehgfvuv", "tsgyrdhg"];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {
      // No need for selectedIndex state variable anymore
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black, // Ubah kTextColor menjadi Colors.black
              width: 2.0,
            ),
          ),
        ),
        labelColor: Colors.black, // Ubah kTextColor menjadi Colors.black
        unselectedLabelColor:
            Colors.grey, // Ganti kTexkrLightColor menjadi Colors.grey
        isScrollable: true,
        tabs: categories
            .map((category) => Tab(
                  child: Text(
                    category,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

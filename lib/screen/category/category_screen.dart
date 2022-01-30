import 'package:flutter/material.dart';
import 'package:henna_hand/models/category_model.dart';
import 'package:henna_hand/models/item_model.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key, required this.category}) : super(key: key);
  final CategoryModel category;

  List<ItemModel> filtered = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < items.length; i++) {
      // front_hand==
      if (category.cataName == items[i].itemCata) {
        filtered.add(items[i]);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(category.cataTitle),
      ),
      body: ListView.builder(
        itemCount: filtered.length,
        itemBuilder: (context, index) => ListTile(
          title: Text('text'),
        ),
      ),
    );
  }
}

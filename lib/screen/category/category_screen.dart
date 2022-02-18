import 'package:flutter/material.dart';
import 'package:henna_hand/models/category_model.dart';
import 'package:henna_hand/models/henna_model.dart';
import 'package:henna_hand/models/item_model.dart';
import 'package:henna_hand/screen/detail/details_screen.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key, required this.category}) : super(key: key);
  final CategoryModel category;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<ItemModel> filtered = [];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < items.length; i++) {
      // front_hand==
      if (widget.category.cataName == items[i].itemCata) {
        filtered.add(items[i]);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.cataTitle),
      ),
      body: ListView.builder(
        itemCount: filtered.length,
        itemBuilder: (context, index) => Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              hennaData: henna_list[index],
                            )));
              },
              child: Container(
                margin: EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      image: NetworkImage(filtered[index].itemImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ]),
              ),
            ),
            Positioned(
              right: 15,
              top: 15,
              child: IconButton(
                icon: Icon(
                  isSelected
                      ? Icons.favorite_outlined
                      : Icons.favorite_border_outlined,
                  color: Colors.red,
                  size: 40,
                ),
                onPressed: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white54.withOpacity(.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Front hand',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

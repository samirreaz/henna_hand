import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:henna_hand/models/category_model.dart';
import 'package:henna_hand/models/henna_model.dart';
import 'package:henna_hand/models/item_model.dart';
import 'package:henna_hand/screen/category/category_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'component/home_category_listview.dart';
import 'component/home_item_listView.dart';
import 'component/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Henna hand',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: HomeCategoryListView(),
          ),
          /* SizedBox(
            height: 20,
          ), */
          Expanded(
            flex: 4,
            child: HomeItemLIstView(),
          ),
        ],
      ),
    );
  }
}

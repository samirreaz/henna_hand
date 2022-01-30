import 'package:flutter/material.dart';
import 'package:henna_hand/models/category_model.dart';
import 'package:henna_hand/models/henna_model.dart';
import 'package:henna_hand/screen/category/category_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  /* List<Map<String, dynamic>> items = [
    {'name': 'Hand Front', 'img': 'assets/images/palm.png'},
    {'name': 'Hand Back', 'img': 'assets/images/palm.png'},
    {'name': 'Fingure', 'img': ''},
  ]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.black45,
        ),
        title: Text(
          'Henna hand',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black45,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryScreen(
                          category: categories[index],
                        ),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                    top: 5,
                  ),
                  alignment: Alignment.bottomCenter,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(categories[index].cataImg),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 2,
                        offset: Offset(5, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    width: double.infinity,
                    child: Text(
                      categories[index].cataTitle,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
              itemCount: categories.length,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: henna_list.length,
              itemBuilder: (context, index) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Colors.green,
                    child: Image(
                      image: NetworkImage(henna_list[index].img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

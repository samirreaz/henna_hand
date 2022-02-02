import 'package:flutter/material.dart';
import 'package:henna_hand/models/category_model.dart';
import 'package:henna_hand/screen/category/category_screen.dart';

class HomeCategoryListView extends StatelessWidget {
  const HomeCategoryListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.separated(
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
          width: size.width * .5,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(categories[index].cataImg),
                fit: BoxFit.cover),
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(3, 2), // changes position of shadow
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
        width: 10,
      ),
      itemCount: categories.length,
    );
  }
}

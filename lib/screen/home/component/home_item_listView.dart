import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:henna_hand/models/item_model.dart';

class HomeItemLIstView extends StatelessWidget {
  const HomeItemLIstView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
        itemCount: items.length,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        itemBuilder: (context, index) => Container(
          //height: 200,
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            /*image: DecorationImage(
                  image: ,
                  fit: BoxFit.cover),*/
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: NetworkImage(items[index].itemImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:henna_hand/models/henna_model.dart';
import 'package:photo_view/photo_view.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.hennaData,
  }) : super(key: key);
  final HennaModel hennaData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: PhotoView(
        imageProvider: NetworkImage(hennaData.img),
      ),
    );
  }
}

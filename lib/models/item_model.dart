class ItemModel {
  final String itemName;
  final String itemCata;
  final String itemImage;
  final String? itemDetails;

  ItemModel({
    required this.itemName,
    required this.itemCata,
    required this.itemImage,
    this.itemDetails,
  });
}

List<ItemModel> items = [
  ItemModel(itemName: 'h1', itemCata: 'front_hand', itemImage: ''),
  ItemModel(itemName: 'h1', itemCata: 'back_hand', itemImage: ''),
  ItemModel(itemName: 'h1', itemCata: 'front_hand', itemImage: ''),
  ItemModel(itemName: 'h1', itemCata: 'back_hand', itemImage: ''),
  ItemModel(itemName: 'h1', itemCata: 'front_hand', itemImage: ''),
];

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
  ItemModel(
    itemName: 'h1',
    itemCata: 'front_hand',
    itemImage: 'https://i.ytimg.com/vi/w6uG6Ac1RPs/maxresdefault.jpg',
  ),
  ItemModel(
    itemName: 'h1',
    itemCata: 'back_hand',
    itemImage: 'https://i.ytimg.com/vi/8XhwkaqxWOI/maxresdefault.jpg',
  ),
  ItemModel(
    itemName: 'h1',
    itemCata: 'front_hand',
    itemImage: 'https://i.ytimg.com/vi/n2MrvnCk-ls/maxresdefault.jpg',
  ),
  ItemModel(
    itemName: 'h1',
    itemCata: 'back_hand',
    itemImage:
        'https://i0.wp.com/shaadiwish.com/blog/wp-content/uploads/2020/04/arabic-mehandi-836x1024.jpg',
  ),
  ItemModel(
    itemName: 'h1',
    itemCata: 'front_hand',
    itemImage:
        'https://crayon.pk/wp-content/uploads/2018/11/Wonderful-front-Hand-Mehndi-Design.jpg',
  ),
];

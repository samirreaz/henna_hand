class CategoryModel {
  final String cataTitle;
  final String cataName;
  final String cataImg;

  CategoryModel({
    required this.cataTitle,
    required this.cataName,
    required this.cataImg,
  });
}

List<CategoryModel> categories = [
  CategoryModel(
    cataTitle: 'Front Hand',
    cataName: 'front_hand',
    cataImg:
        'https://i.pinimg.com/originals/14/40/11/144011675e49fa384c5beeafeb014d19.jpg',
  ),
  CategoryModel(
    cataTitle: 'Back Hand',
    cataName: 'back_hand',
    cataImg:
        'https://i.pinimg.com/originals/a2/83/66/a283666c27adf331b58b7aa4ae85c756.png',
  ),
  CategoryModel(
    cataTitle: 'Finger',
    cataName: 'finger',
    cataImg:
        'https://allmehandidesigns.com/wp-content/uploads/2017/04/Embellished-Finger-Look-for-Teenagers.jpg',
  ),
  CategoryModel(
    cataTitle: 'Arm',
    cataName: 'arm',
    cataImg:
        'https://i.pinimg.com/originals/8f/38/27/8f3827c693059de038aa8718a3e23928.jpg',
  ),
  CategoryModel(
    cataTitle: 'Foot',
    cataName: 'foot',
    cataImg:
        'https://media.weddingz.in/images/20191218150831/30-basic-mehndi-designs-for-hands-and-feet28.jpg',
  ),
  CategoryModel(
    cataTitle: 'Wedding',
    cataName: 'wedding',
    cataImg:
        'https://i.pinimg.com/originals/b8/28/2b/b8282be5d97c0f73cade16af07f989db.jpg',
  ),
  CategoryModel(
    cataTitle: 'Eid Special',
    cataName: 'eid',
    cataImg:
        'https://www.pinkvilla.com/files/eid_ul_adha_2021_beautiful_mehendi_designs_to_invoke_the_festive_spirit_floral_1.jpg',
  ),
];

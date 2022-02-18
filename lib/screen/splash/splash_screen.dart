import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:henna_hand/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int? slideCurrentIndex;

  List<String> images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (value) {
          slideCurrentIndex = value;
          debugPrint(value.toString());
          setState(() {});
        },
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) => Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/${images[index]}',
                ),
                fit: BoxFit.cover,
              )),
          child: Container(
            margin: EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: 'Tours'),
                    AppText(
                      text: 'Mountain',
                      size: 30,
                      color: Colors.black54,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 250,
                      child: AppText(
                        text:
                            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia',
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 20,
                  alignment: Alignment.topRight,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Card(
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: slideCurrentIndex == index
                                ? Colors.red
                                : Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppText extends StatelessWidget {
  AppText({
    Key? key,
    this.color = Colors.black26,
    this.size = 16,
    required this.text,
  }) : super(key: key);

  final String text;
  double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}

class AppLargeText extends StatelessWidget {
  AppLargeText({
    Key? key,
    required this.text,
    this.color = Colors.black,
  }) : super(key: key);

  final String text;
  final Color color;
  double size = 30;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}

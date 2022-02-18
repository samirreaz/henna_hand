import 'package:flutter/material.dart';
import 'package:henna_hand/screen/home/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> _pages = [
    PageViewModel(
      title: 'Welcome to the app',
      body: 'This is a demo app for the Introduction Screen plugin.',
      image: Image.asset('assets/images/welcome-one.png'),
      decoration: const PageDecoration(
        pageColor: Color(0xFFF5F5F5),
        bodyTextStyle: TextStyle(fontSize: 14),
        titleTextStyle: TextStyle(fontSize: 28),
        descriptionPadding: EdgeInsets.only(top: 30, left: 20, right: 20),
        imagePadding: EdgeInsets.only(top: 0, left: 0, right: 0),
      ),
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("Let's go!"),
      ),
    ),
    PageViewModel(
      title: 'This is page 2',
      body: 'This is a demo app for the Introduction Screen plugin.',
      image: Image.asset('assets/images/welcome-two.png'),
      decoration: const PageDecoration(
        pageColor: Color(0xFFF5F5F5),
        bodyTextStyle: TextStyle(fontSize: 14),
        titleTextStyle: TextStyle(fontSize: 28),
        descriptionPadding: EdgeInsets.only(top: 30, left: 20, right: 20),
        imagePadding: EdgeInsets.only(top: 0, left: 0, right: 0),
      ),
    ),
    PageViewModel(
      title: 'This is page 3',
      body: 'This is a demo app for the Introduction Screen plugin.',
      image: Image.asset('assets/images/welcome-three.png'),
      decoration: const PageDecoration(
        pageColor: Color(0xFFF5F5F5),
        bodyTextStyle: TextStyle(fontSize: 14),
        titleTextStyle: TextStyle(fontSize: 28),
        descriptionPadding: EdgeInsets.only(top: 30, left: 20, right: 20),
        imagePadding: EdgeInsets.only(top: 0, left: 0, right: 0),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction Screen'),
      ),
      body: IntroductionScreen(
        pages: _pages,
        showDoneButton: true,
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        //onDone: () => _onIntroEnd(context),
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },

        showNextButton: true,
        next: const Icon(Icons.arrow_forward),
        showSkipButton: true,
        skip: const Text('Skip'),
        /* onSkip: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        }, */
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          //! it's for active dot biger sizee
          activeSize: Size.square(20.0),
          //! it's for active dot change height width
          //activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        curve: Curves.bounceOut,
        //! set primary color
        //globalBackgroundColor: Theme.of(context).primaryColor,
        //! now if i want to change screenby clicking dots, it's now working
        //isProgressTap: false,
        //! projgess is not working
        //isProgress: false,
        //! swife to next screen it's not woiking because,
        //freeze: true,
        animationDuration: 1000,
      ),
    );
  }

  /* void _onIntroEnd(context) async {
    //! if we install this app first time then we will set the flag to true
    //! and we will not show the intro screen again
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  } */
}

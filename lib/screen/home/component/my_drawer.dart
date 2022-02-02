import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.colorBurn),
                image: NetworkImage(
                  'https://media.weddingz.in/images/02018a79dc16133ff903c7a10ab72692/latest-mehndi-designs-for-the-2018-bride.jpg',
                ),
              ),
            ),
            child: Stack(
              children: [
                /* Container(

                  color: Colors.amber.withOpacity(.5),
                ), */
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/280x280_RS/b8/fb/fa/b8fbfa0c2c25fcc50f0a8572be3250ea.jpg',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tanjina Aysha',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: const Text('Share This App'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: const Text('Support Us'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment_outlined),
            title: const Text('Privacy Policy'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}

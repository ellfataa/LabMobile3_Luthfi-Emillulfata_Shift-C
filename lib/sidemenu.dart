import 'package:flutter/material.dart';
import 'package:pert2_prakpemob/home_page.dart';
import 'package:pert2_prakpemob/about_page.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // Menghilangkan padding default
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              'KreasiKita',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            margin: EdgeInsets.zero, // Menghilangkan margin default
            padding: EdgeInsets.all(8), // Mengurangi padding
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
        ],
      ),
    );
  }
}
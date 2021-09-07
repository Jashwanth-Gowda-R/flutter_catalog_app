import 'dart:html';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://avatars.githubusercontent.com/u/56092435?v=4';
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                accountName: Text(
                  'Shani',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
                accountEmail: Text('Shani@gmail.com'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email me'),
            ),
          ],
        ),
      ),
    );
  }
}

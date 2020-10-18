import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlaylistsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Library"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/avatar.png'
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Raphael Chaula",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
                ],
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Welcome"),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Account"),
              onTap: () {
                Navigator.pushNamed(context, '/account');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard0"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard1"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard2"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard3"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard4"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
                      ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard5"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard6"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard7"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard8"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard9"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Dashboard10"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
          ],
        )
      )
    );
  }
}
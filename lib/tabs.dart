import 'package:flutter/material.dart';
import 'package:regina/bible.dart';
import 'package:regina/library.dart';
import 'package:regina/playlists.dart';
import 'package:regina/search.dart';
import 'package:regina/settings.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;

  final _libraryScreen = GlobalKey<NavigatorState>();
  final _playlistScreen = GlobalKey<NavigatorState>();
  final _searchScreen = GlobalKey<NavigatorState>();
  final _bibleScreen = GlobalKey<NavigatorState>();
  final _settingsScreen = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Navigator(
            key: _libraryScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => LibraryScreen(),
            ),
          ),
          Navigator(
            key: _playlistScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => PlaylistsScreen(),
            ),
          ),
          Navigator(
            key: _searchScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => SearchScreen(),
            ),
          ),
          Navigator(
            key: _bibleScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => BibleScreen(),
            ),
          ),
          Navigator(
            key: _settingsScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => SettingsScreen(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (val) => _onTap(val, context),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Library'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Playlists'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            title: Text('Bible'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }

  void _onTap(int val, BuildContext context) {
    if (_currentIndex == val) {
      switch (val) {
        case 0:
          _libraryScreen.currentState.popUntil((route) => route.isFirst);
          break;
        case 1:
          _playlistScreen.currentState.popUntil((route) => route.isFirst);
          break;
        case 2:
          _searchScreen.currentState.popUntil((route) => route.isFirst);
          break;
        case 3:
          _bibleScreen.currentState.popUntil((route) => route.isFirst);
          break;
        case 4:
          _settingsScreen.currentState.popUntil((route) => route.isFirst);
          break;
        default:
      }
    } else {
      if (mounted) {
        setState(() {
          _currentIndex = val;
        });
      }
    }
  }
}
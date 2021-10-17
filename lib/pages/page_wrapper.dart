import 'package:flutter/material.dart';
import '/common/theme_config.dart';
import '/pages/characters_page.dart';

class PageWrapper extends StatefulWidget {
  const PageWrapper({Key? key}) : super(key: key);

  @override
  State<PageWrapper> createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper> {
  final List<Widget> _pages = [
    CharactersPage(),
    Container(),
    Container(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _pages,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'Characters', icon: Icon(Icons.person_rounded)),
          BottomNavigationBarItem(label: 'Locatons', icon: Icon(Icons.location_on)),
          BottomNavigationBarItem(label: 'Episodes', icon: Icon(Icons.video_collection_outlined)),
        ],
        iconSize: 32,
        currentIndex: _currentIndex,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ThemeConfig.green,
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }
}

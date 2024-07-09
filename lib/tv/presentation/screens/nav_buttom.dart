import 'package:flutter/material.dart';
import 'package:movie_iti/movie/presentation/screens/home_movie_view.dart';
import 'package:movie_iti/tv/presentation/screens/home_view.dart';

class Nav extends StatefulWidget {
  @override
  State<Nav> createState() => Nav_State();
}

class Nav_State extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    HomeMovieView(),
    // CardListView(),
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('NewsApp'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        unselectedFontSize: 14,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_creation_outlined,
              color: Colors.white,
            ),
            label: 'Tvs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv_outlined, color: Colors.white),
            label: 'Movies',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.white,
      ),
    );
  }
}

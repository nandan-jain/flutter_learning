import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/home_screen.dart';

class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  int _curStep = 0;
  var _pagesData = [
    HomePage(),
    FavouritePage(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: _pagesData[_curStep],
        // child: _bodyWidget(),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.airline_seat_recline_normal),
      //   onPressed: _resetCount,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.orange,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.orange,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.orange,
              ),
              label: '')
        ],
        currentIndex: _curStep,
        onTap: (setValue) {
          setState(() {
            _curStep = setValue;
          });
        },
      ),
    );
  }
}

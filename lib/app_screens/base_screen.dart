import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/home_screen.dart';
import 'package:hello_world/base_widgets/main_drawer.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(170),
            child: Text('Welcome'),
          ),
          Container(
              child: ElevatedButton(
            child: Text('Get started'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeState()));
            },
            style: ElevatedButton.styleFrom(primary: Colors.orange),
          )),
        ],
      ),
    ));
  }
}

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
      appBar: AppBar(
        title: Text('app bar'),
      ),
      drawer: MainDrawer(),
      body: _pagesData[_curStep],
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

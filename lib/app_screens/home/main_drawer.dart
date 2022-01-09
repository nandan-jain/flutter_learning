import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/home/action-screens/settings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            // margin: EdgeInsets.only(top: 50),
            child: Padding(
              padding: EdgeInsets.only(top: 70, left: 20),
              child: Text('Welcome',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            color: Colors.black,
            width: double.infinity,
          ),
          Container(
            width: 80,
            height: 100,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://yt3.ggpht.com/ytc/AKedOLQhE8UbT1IXDDfAqe-TS_TvHgkLqz3AeB0QM5k8Iw=s88-c-k-c0x00ffffff-no-rj'))),
          ),
          ListTile(
            title: Text(
              'HOME',
              style: TextStyle(color: Colors.black),
            ),
            leading: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
          ),
          ListTile(
              title: Text(
                'SETTINGS',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              }),
          ListTile(
            title: Text(
              'LOGOUT',
              style: TextStyle(color: Colors.black),
            ),
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

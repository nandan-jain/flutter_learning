import 'package:flutter/material.dart';
import 'package:hello_world/app_screens/home_screen.dart';
import 'package:hello_world/base_widgets/main_drawer.dart';

class TabLayout extends StatelessWidget {
  const TabLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.search_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
          drawer: MainDrawer(),
          body: TabBarView(
            children: [
              HomePage(),
              NotificationPage(),
              ProfilePage(),
              FavouritePage()
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(
                icon: Icon(Icons.favorite_outline),
              ),
              Tab(
                icon: Icon(Icons.notifications_outlined),
              ),
              Tab(
                icon: Icon(Icons.person_outlined),
              ),
            ],
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            // indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.orange,
          ),
          //backgroundColor: Colors.grey[850],
        ));
  }
}

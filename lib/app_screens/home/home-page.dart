import 'package:flutter/material.dart';

import 'main_drawer.dart';
import 'tabs/favourites/favourite.dart';
import 'tabs/feed/main-feed.dart';
import 'tabs/notifications/notify.dart';
import 'tabs/profile/profile.dart';


class TabLayout extends StatelessWidget {
  const TabLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
          drawer: MainDrawer(),
          body: TabBarView(
            children: [
              HomeInitial(),
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

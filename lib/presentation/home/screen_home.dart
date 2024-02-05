import 'package:flutter/material.dart';

 import 'tabs/home_tab.dart';
import 'tabs/post_and_feed.dart';
import 'tabs/reels_tab.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: EdgeInsets.only(left: size.width * 0.03),
                child: CircleAvatar(
                  radius: size.width * 0.01,
                ),
              ),
              backgroundColor: Colors.white,
              title: const Text("Artizt\n Netwotk"),
              actions: const [
                Icon(Icons.shopping_bag),
                Icon(Icons.notifications_outlined),
              ],
            ),
            body: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 1,
                  color: Colors.grey[300],
                ),
                TabBar(
                  isScrollable: true,
                  overlayColor: MaterialStatePropertyAll(Colors.orange[200]),
                  indicatorColor: Colors.orange,
                  labelColor: Colors.orange,
                  dividerColor: Colors.grey[300],
                  tabs: const [
                    Tab(
                      child: Row(
                        children: [
                          Icon(Icons.home_rounded),
                          Text("Home"),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Icon(Icons.movie_creation_outlined),
                          Text("Post&feed"),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Icon(Icons.movie_creation_outlined),
                          Text("Pitch Reels"),
                        ],
                      ),
                    ),
                  ],
                ),
                 const Expanded(
                    child: TabBarView(children: [
                  HomeTab(),
                  PostAndFeedTab(),
                  ReelsTab(),
                ]))
              ],
            )));
  }
}
 
import 'package:flutter/material.dart';

import '../home/screen_home.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key, this.isLoading = false});

  final bool isLoading;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedTab = 0;

  final List _pages = [ 
    const ScreenHome(),
    const Center(child: Text("Add Post")),
    const Center(child: Text("Explore")),
    const Center(child: Text("Search")),
    const Center(child: Text("Inbox")),
    
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'message',
          ),
        ],
        selectedItemColor: Colors.orange,
        // unselectedItemColor: const Color(0xff454343),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  // Widget get loadingWidget => SizedBox(
  //       height: 60.h,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: List.generate(
  //           4,
  //           (index) => Shimmer.fromColors(
  //               baseColor: AppColors.shimmerGrey,
  //               highlightColor: AppColors.white,
  //               child: const CircleAvatar()),
  //         ),
  //       ),
  //     );
}

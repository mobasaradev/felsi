import 'package:felsi/src/feature/dashboard/feed/presentation/view/feed_page.dart';
import 'package:felsi/src/feature/dashboard/notification/presentation/view/notification_page.dart';
import 'package:felsi/src/feature/dashboard/profile/presentation/view/profile_page.dart';
import 'package:felsi/src/feature/dashboard/search/presentation/view/search_page.dart';
import 'package:flutter/material.dart';

import '../../../../../core/gen/assets.gen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = <Widget>[
    const FeedPage(),
    const SearchPage(),
    const Center(child: Icon(Icons.add_box, size: 150)),
    NotificationPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.search.svg(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.newPosts.svg(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.activityFeed.svg(),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDBfkdm1oAL5mf-KY5TpOgNzLoP3ZA4G9iww&s"),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}

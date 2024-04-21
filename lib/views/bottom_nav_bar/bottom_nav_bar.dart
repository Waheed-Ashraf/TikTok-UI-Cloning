import 'package:flutter/material.dart';
import 'package:tik_tok_cloning_ui/views/add_post_view/add_post_view.dart';
import 'package:tik_tok_cloning_ui/views/friendes_feed_view/friends_feed_view.dart';
import 'package:tik_tok_cloning_ui/views/home_view/home_view.dart';
import 'package:tik_tok_cloning_ui/views/inpox_view/inpox_view.dart';
import 'package:tik_tok_cloning_ui/views/profile_view/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> views = const [
    HomeView(),
    FriendsFeedView(),
    AddPostView(),
    InpoxView(),
    Profile(),
  ];
  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          brightness: Brightness.dark,
        ),
        child: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          elevation: 0,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? const Icon(
                      Icons.group,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.group_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Align(
                    alignment: const Alignment(0, 0),
                    child: Container(
                      width: 45,
                      height: 30,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Colors.cyan, Colors.pink]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, 0),
                    child: Container(
                      width: 38,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? const Icon(
                      Icons.message,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.message_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 4
                  ? const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.person_outline,
                      size: 25,
                      color: Colors.white,
                    ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: views[_selectedIndex],
    );
  }
}

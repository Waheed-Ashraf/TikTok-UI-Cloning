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

  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 0,
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        iconSize: 28,
        items: [
          BottomNavigationBarItem(
            icon: _currentPage == 0
                ? const Icon(
                    Icons.home,
                  )
                : const Icon(
                    Icons.home_outlined,
                  ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 1
                ? const Icon(
                    Icons.group,
                  )
                : const Icon(
                    Icons.group_outlined,
                  ),
            label: "Friends",
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
                        gradient: const LinearGradient(colors: [
                          Colors.cyan,
                          Colors.pink,
                        ]),
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 3
                ? const Icon(
                    Icons.message,
                  )
                : const Icon(
                    Icons.message_outlined,
                  ),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: _currentPage == 4
                ? const Icon(
                    Icons.person,
                  )
                : const Icon(
                    Icons.person_outline,
                  ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Stack(children: [
        PageView(
          children: const [
            HomePosts(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Container(
            height: 40,
            alignment: const Alignment(0, 0),
            child: const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                labelPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                dividerColor: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 25),
                indicatorColor: Colors.white,
                indicatorPadding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                tabs: [
                  Text(
                    'Your City',
                  ),
                  Text(
                    'Following',
                  ),
                  Text(
                    'For You',
                  ),
                  Text(
                    'LIVE',
                  ),
                ]),
          ),
        )
      ]),
    );
  }
}

class HomePosts extends StatefulWidget {
  const HomePosts({super.key});

  @override
  State<HomePosts> createState() => _HomePostsState();
}

class _HomePostsState extends State<HomePosts> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}

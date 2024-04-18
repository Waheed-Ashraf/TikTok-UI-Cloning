import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        HomePosts(),
      ],
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

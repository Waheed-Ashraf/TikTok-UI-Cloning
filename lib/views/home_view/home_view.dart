import 'package:flutter/material.dart';
import 'package:tik_tok_cloning_ui/data/posts_data.dart';

import 'package:tik_tok_cloning_ui/views/home_view/widgets/home_posts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _snappedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Stack(children: [
        PageView.builder(
          onPageChanged: (int pageNum) {
            setState(() {
              _snappedPageIndex = pageNum;
            });
          },
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: homePosts.length,
          itemBuilder: (context, index) {
            return HomePosts(
              postsModel: homePosts[index],
              currentIndex: index,
              snappedPagIndex: _snappedPageIndex,
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Container(
            height: 40,
            alignment: const Alignment(0, 0),
            child: const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: Color.fromARGB(255, 213, 213, 213),
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

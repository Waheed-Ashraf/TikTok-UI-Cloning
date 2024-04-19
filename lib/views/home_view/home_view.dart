import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          scrollDirection: Axis.vertical,
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
        Align(
          alignment: Alignment(1, 1),
          child: Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * .55,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          width: 44,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22)),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                'assets/images/profile.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 12.5,
                        child: Container(
                          width: 18,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const PostButton(
                    postIcon: Icon(FontAwesomeIcons.solidHeart),
                    postReach: "1.2M",
                  ),
                  const PostButton(
                    postIcon: Icon(FontAwesomeIcons.solidMessage),
                    postReach: "1.2M",
                  ),
                  const PostButton(
                    postIcon: Icon(FontAwesomeIcons.solidBookmark),
                    postReach: "1.2M",
                  ),
                  const PostButton(
                    postIcon: Icon(FontAwesomeIcons.share),
                    postReach: "1.2M",
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 44,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/cd.png"))),
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Image.asset(
                              'assets/images/profile.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PostButton extends StatelessWidget {
  final Icon postIcon;
  final String postReach;
  const PostButton(
      {super.key, required this.postIcon, required this.postReach});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [postIcon, Text(postReach)],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tik_tok_cloning_ui/views/home_view/widgets/post_button.dart';
import 'package:marquee/marquee.dart';

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
          alignment: const Alignment(1, 1),
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
                        decoration: const BoxDecoration(
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
        ),
        Align(
          alignment: const Alignment(-1, 1),
          child: Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width * .6,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "CodX",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text.rich(
                    TextSpan(children: <InlineSpan>[
                      TextSpan(
                        text: 'Caption',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' #Widget #flutter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.music,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .45,
                        height: 20,
                        child: Marquee(
                          text: 'Audio Name   .   ',
                          velocity: 10,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

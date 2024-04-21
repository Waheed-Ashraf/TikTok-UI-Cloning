import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tik_tok_cloning_ui/data/model/posts_model.dart';
import 'package:tik_tok_cloning_ui/views/home_view/widgets/post_button.dart';
import 'package:marquee/marquee.dart';

class HomePosts extends StatefulWidget {
  final PostsModel postsModel;
  const HomePosts({super.key, required this.postsModel});

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
                          height: 44,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22)),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                widget.postsModel.userPic,
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
                  PostButton(
                    postIcon: const Icon(FontAwesomeIcons.solidHeart),
                    postReach: widget.postsModel.liksNum,
                  ),
                  PostButton(
                    postIcon: const Icon(FontAwesomeIcons.solidMessage),
                    postReach: widget.postsModel.commentsNum,
                  ),
                  PostButton(
                    postIcon: const Icon(FontAwesomeIcons.solidBookmark),
                    postReach: widget.postsModel.bookMarkNum,
                  ),
                  PostButton(
                    postIcon: const Icon(FontAwesomeIcons.share),
                    postReach: widget.postsModel.shareNum,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 44,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/cd.png"))),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 11,
                            backgroundImage: AssetImage(
                              widget.postsModel.userPic,
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
                  Text(
                    widget.postsModel.userName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text.rich(
                    TextSpan(children: <InlineSpan>[
                      TextSpan(
                        text: widget.postsModel.postCaption,
                      ),
                      TextSpan(
                        text: widget.postsModel.postHashtags,
                        style: const TextStyle(
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
                          text: '${widget.postsModel.audioName}   .   ',
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

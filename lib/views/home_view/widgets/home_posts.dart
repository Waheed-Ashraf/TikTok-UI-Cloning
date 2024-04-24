import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tik_tok_cloning_ui/data/model/posts_model.dart';
import 'package:tik_tok_cloning_ui/views/home_view/widgets/post_button.dart';
import 'package:marquee/marquee.dart';
import 'package:tik_tok_cloning_ui/views/home_view/widgets/video.dart';

class HomePosts extends StatelessWidget {
  final PostsModel postsModel;
  final int snappedPagIndex;
  final int currentIndex;
  const HomePosts(
      {super.key,
      required this.postsModel,
      required this.snappedPagIndex,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // post Video ==================================>>

        Video(
          videoUrl: postsModel.videoUrl,
          currentIndex: currentIndex,
          snappedPagIndex: snappedPagIndex,
        ),
        // post Reatch ==================================>>

        Align(
          alignment: const Alignment(1, 1),
          child: SizedBox(
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
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                postsModel.userPic,
                              ),
                            ),
                          )),
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
                    postReach: postsModel.liksNum,
                  ),
                  PostButton(
                    postIcon: const Icon(FontAwesomeIcons.solidMessage),
                    postReach: postsModel.commentsNum,
                  ),
                  PostButton(
                    postIcon: const Icon(FontAwesomeIcons.solidBookmark),
                    postReach: postsModel.bookMarkNum,
                  ),
                  PostButton(
                    postIcon: const Icon(FontAwesomeIcons.share),
                    postReach: postsModel.shareNum,
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
                              postsModel.userPic,
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
        // post details ==================================>>
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
                    postsModel.userName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text.rich(
                    TextSpan(children: <InlineSpan>[
                      TextSpan(
                        text: postsModel.postCaption,
                      ),
                      TextSpan(
                        text: postsModel.postHashtags,
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
                          text: '${postsModel.audioName}   .   ',
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

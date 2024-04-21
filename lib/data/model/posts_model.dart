class PostsModel {
  String liksNum = "0";
  String commentsNum = "0";
  final String videoUrl;
  String shareNum = '0';
  final String userName;
  final String userPic;
  String bookMarkNum = "0";

  final String postCaption;
  final String postHashtags;

  final String audioName;

  PostsModel({
    required this.postHashtags,
    required this.audioName,
    required this.videoUrl,
    required this.userName,
    required this.userPic,
    required this.postCaption,
    required this.liksNum,
    required this.bookMarkNum,
    required this.commentsNum,
    required this.shareNum,
  });
}

import 'package:flutter/material.dart';

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

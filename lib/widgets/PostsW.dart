import 'package:facebook/config/pallete.dart';
import 'package:facebook/models/models.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostsW extends StatelessWidget {
  final Post post;
  const PostsW({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 8),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Post_Header(postobc: post),
                const SizedBox(height: 5.0),
                Text(post.caption),
                post.imageUrl.toString() == 'null'
                    ? const SizedBox.shrink()
                    : const SizedBox(
                        height: 6,
                      )
              ],
            ),
          ),
          post.imageUrl.toString() != 'null'
              ? Image.network(post.imageUrl)
              : SizedBox.shrink(),
          PostStats(
            postobc: post,
          ),
        ],
      ),
    );
  }
}

class Post_Header extends StatelessWidget {
  final Post postobc;
  const Post_Header({Key? key, required this.postobc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(postobc.user.imageUrl),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postobc.user.name,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Wrap(
                spacing: 5,
                children: [
                  Text(
                    postobc.timeAgo,
                    style: TextStyle(color: Color.fromARGB(255, 82, 79, 79)),
                  ),
                  Icon(Icons.public_sharp, size: 16),
                ],
              )
            ],
          ),
        ),
        Icon(Icons.horizontal_rule)
      ],
    );
  }
}

class PostStats extends StatelessWidget {
  final Post postobc;
  const PostStats({Key? key, required this.postobc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 1),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Palette.facebookBlue, shape: BoxShape.circle),
                child: Icon(
                  MdiIcons.thumbUp,
                  color: Colors.white,
                  size: 12,
                ),
              ),
              Expanded(child: Text(' ${postobc.likes}')),
              Text('${postobc.comments} comments'),
              SizedBox(
                width: 10,
              ),
              Text('${postobc.shares} share'),
            ],
          ),
        ),
        Divider(
          color: Colors.black45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LCSBTN(iconname: MdiIcons.thumbUpOutline, name: "Like"),
            LCSBTN(iconname: MdiIcons.commentOutline, name: "Comment"),
            LCSBTN(iconname: MdiIcons.shareOutline, name: "Share"),
          ],
        )
      ],
    );
  }
}

class LCSBTN extends StatelessWidget {
  final IconData iconname;
  final String name;

  const LCSBTN({Key? key, required this.iconname, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconname,
                size: 20,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 5,
              ),
              Text(name)
            ],
          ),
        ),
      ),
    );
  }
}

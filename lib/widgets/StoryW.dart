import 'package:facebook/config/pallete.dart';
import 'package:facebook/data/data.dart';
import 'package:facebook/models/models.dart';
import 'package:flutter/material.dart';

class StoryW extends StatelessWidget {
  const StoryW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: STORY_DESIGN(
                usem: currentUser,
                isuserimag: true,
                stom: stories[0],
              ),
            );
          }
          final Story storie = stories[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: STORY_DESIGN(
              stom: storie,
              isuserimag: false,
              usem: currentUser,
            ),
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class STORY_DESIGN extends StatelessWidget {
  User usem;
  Story stom;
  bool isuserimag = false;
  STORY_DESIGN(
      {Key? key,
      required this.stom,
      required this.isuserimag,
      required this.usem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(isuserimag ? usem.imageUrl : stom.imageUrl,
                fit: BoxFit.cover),
          ),
          Container(
            width: 120,
            decoration: BoxDecoration(
              gradient: Palette.storyGradient,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: isuserimag
                ? Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                      color: Palette.facebookBlue,
                    ),
                  )
                : CircleAvatar(
                    backgroundImage: NetworkImage(stom.user.imageUrl),
                  ),
          ),
          Positioned(
            bottom: 2,
            left: 8,
            right: 8,
            child: Text(
              isuserimag ? "Add To Story" : stom.user.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}

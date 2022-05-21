import 'package:facebook/config/pallete.dart';
import 'package:facebook/data/data.dart';
import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RoomsW extends StatelessWidget {
  const RoomsW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: ListView.builder(
        itemCount: 1 + onlineUsers.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: RoomIconW(),
            );
          }
          final User user = onlineUsers[index - 1];
          return Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 2),
            child: CirlceAvatarOnlinW(
              pop: user.imageUrl,
            ),
          );
        },
      ),
    );
  }
}

class RoomIconW extends StatelessWidget {
  const RoomIconW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Row(
          children: [
            ShaderMask(
              shaderCallback: (react) =>
                  Palette.createRoomGradient.createShader(react),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create"),
                Text("Room"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

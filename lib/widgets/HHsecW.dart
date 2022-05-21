import 'package:facebook/models/user_model.dart';
import 'package:flutter/material.dart';

class HHsecW extends StatelessWidget {
  final User currentUser;

  const HHsecW({Key? key, required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    border: InputBorder.none,
                  ),
                  onTap: () {},
                ),
              )
            ],
          ),
          Divider(),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.videocam, color: Colors.red),
                  label: Text(
                    "Live",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.photo_library, color: Colors.green),
                  label: Text(
                    "Photo",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.video_call, color: Colors.purpleAccent),
                  label: Text(
                    "Room",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:facebook/config/pallete.dart';
import 'package:flutter/material.dart';

class CirlceAvatarOnlinW extends StatelessWidget {
  final String pop;
  const CirlceAvatarOnlinW({required this.pop, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(pop),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                  color: Palette.online,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

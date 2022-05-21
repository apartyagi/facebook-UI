import 'package:facebook/config/pallete.dart';
import 'package:facebook/data/data.dart';
import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            title: Text(
              "facebook",
              style: const TextStyle(
                  color: Palette.facebookBlue,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                  fontSize: 28),
            ),
            actions: [
              CircularIconW(
                  Iconname: Icons.search,
                  onpress: () {},
                  size: 30,
                  colora: Colors.black),
              CircularIconW(
                  Iconname: MdiIcons.facebookMessenger,
                  onpress: () {},
                  colora: Colors.black,
                  size: 30),
            ],
          ),
          SliverToBoxAdapter(
            child: HHsecW(currentUser: currentUser),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: RoomsW(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 0.8, 0, 5),
            sliver: SliverToBoxAdapter(
              child: StoryW(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post postobj = posts[index];
                return PostsW(
                  post: postobj,
                );
              },
              childCount: posts.length,
            ),
          )
        ],
      ),
    );
  }
}

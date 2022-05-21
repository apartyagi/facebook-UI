import 'package:facebook/config/pallete.dart';
import 'package:flutter/material.dart';

class CustomtabbarW extends StatelessWidget {
  final List<IconData> iconsq;
  final int selectind;
  final Function(int) ontap;
  const CustomtabbarW({
    Key? key,
    required this.selectind,
    required this.ontap,
    required this.iconsq,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(color: Palette.facebookBlue),
        ),
      ),
      tabs: iconsq
          .asMap()
          .map(
            (i, e) => MapEntry(
              i,
              Tab(
                icon: Icon(
                  e,
                  color: i == selectind ? Palette.facebookBlue : Colors.black45,
                ),
              ),
            ),
          )
          .values
          .toList(),
      onTap: ontap,
    );
  }
}

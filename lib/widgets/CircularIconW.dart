import 'package:flutter/material.dart';

class CircularIconW extends StatelessWidget {
  final IconData Iconname;
  final double size;
  final Function onpress;
  final Color colora;

  CircularIconW(
      {Key? key,
      required this.Iconname,
      required this.onpress,
      required this.colora,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {
          onpress;
        },
        icon: Icon(Iconname),
        color: colora,
        iconSize: size,
      ),
    );
  }
}

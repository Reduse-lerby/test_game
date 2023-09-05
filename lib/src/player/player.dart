import 'package:flutter/material.dart';
import 'package:sprite/sprite.dart';

class Player extends StatelessWidget {
  final double x;
  final double y;
    final bool lefSide;

  const Player(this.x, this.y, this.lefSide, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: x,
      top: y,
      duration: Duration(milliseconds: 27),
      child: Sprite(
        imagePath: "assets/fish.png",
        scale: 0.3,
        size: Size(402,243), amount: 14,
        flipX: lefSide,
        stepTime: 50,


      ),
    );
  }
}
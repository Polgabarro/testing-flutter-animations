import 'package:flutter/material.dart';

class AnimationPositionedWidget extends StatefulWidget {
  const AnimationPositionedWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationPositionedWidget> createState() =>
      _AnimationPositionedWidgetState();
}

class _AnimationPositionedWidgetState extends State<AnimationPositionedWidget> {

  var click = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(seconds: 2),
      left: click ?  240 : 120,
      top: 100,
      curve: Curves.bounceOut,
      child: GestureDetector(
          onTap: () {
            setState(() => {
              click = !click
            });
          },
          child: AnimatedScale(
            curve: Curves.easeInOut,
              duration: Duration(seconds: 2),
              scale: click ? 1 : 2,
              child: AnimatedRotation(
                  duration: Duration(seconds: 2),
                  turns: click ? 0 : 1,
                  child: FlutterLogo(size: 120)))
      ),
    );
  }
}

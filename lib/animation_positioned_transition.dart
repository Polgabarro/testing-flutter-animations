import 'package:flutter/material.dart';

class AnimationPositionedTransition extends StatefulWidget {
  const AnimationPositionedTransition({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationPositionedTransition> createState() => _AnimationPositionedTransitionState();
}

class _AnimationPositionedTransitionState extends State<AnimationPositionedTransition>
    with TickerProviderStateMixin {

  var logoSize = 120;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )
    ..forward()
    ..addListener(() {
      if (_controller.isCompleted) {
        _controller.repeat();
      }
    });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 2.0),
        end: const Offset(2.5, 2.0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceOut,
      )),
      child: const FlutterLogo(size: 120.0),
    );
  }
}

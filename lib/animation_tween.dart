import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimationTweenExample extends StatefulWidget {
  const AnimationTweenExample({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationTweenExample> createState() => _AnimationState();
}

class _AnimationState extends State<AnimationTweenExample>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? alpha;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    alpha = Tween(begin: 120.0, end: 240.0).animate(
        CurvedAnimation(parent: _controller!,
            curve: Curves.bounceInOut)
    );

    _controller!.addListener(_update);
    _controller!.forward();
  }

  void _update() {
    setState(() {
      if (_controller!.isCompleted) {
        _controller!.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100.0,
      left: alpha!.value,
      child: const FlutterLogo(
        size: 120.0,
      ),
    );
  }
}

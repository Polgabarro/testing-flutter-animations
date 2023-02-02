import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimationControllerExample extends StatefulWidget {
  const AnimationControllerExample({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationControllerExample> createState() => _AnimationState();
}

class _AnimationState extends State<AnimationControllerExample> with SingleTickerProviderStateMixin {

  AnimationController? _controller;
  var x = 120.0;

  @override
  void initState() {
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 2));
    _controller!.addListener(_update);
    _controller!.forward();
  }

  void _update() {
    setState(() {
      x= 120 + _controller!.value * 120;
      if (_controller!.isCompleted) {
        _controller!.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100.0,
      left: x,
      child: const FlutterLogo(
        size: 120.0,
      ),
    );
  }
}
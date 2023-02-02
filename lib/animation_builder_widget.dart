import 'package:flutter/material.dart';

class AnimationBuilderWidget extends StatefulWidget {
  const AnimationBuilderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationBuilderWidget> createState() => _AnimationBuilderWidgetState();
}

class _AnimationBuilderWidgetState extends State<AnimationBuilderWidget>
    with TickerProviderStateMixin {

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

  late final Animation alpha = Tween(begin: 120.0, end: 240.0)
      .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          height: 500.0,
          left: alpha.value,
          child: child!,
        );
      },
      child: const FlutterLogo(
        size: 120.0,
      ),
    );
  }
}

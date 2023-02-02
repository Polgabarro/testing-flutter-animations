import 'package:flutter/material.dart';

class AnimationTweenBuilder extends StatefulWidget {
  const AnimationTweenBuilder({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationTweenBuilder> createState() => _AnimationTweenBuilderState();
}

class _AnimationTweenBuilderState extends State<AnimationTweenBuilder>
    with TickerProviderStateMixin {

  var end = false;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 2),
      tween: Tween<double>(begin: 120.0, end: end ? 120.0 : 240.0),
      curve: Curves.bounceOut,
      onEnd: () => setState(() =>  {end = !end}),
      builder: (_, double value, child) {
        return Positioned(
          height: 500.0,
          left: value,
          child: child!,
        );
      },
      child: const FlutterLogo(
        size: 120.0,
      ),
    );
  }
}

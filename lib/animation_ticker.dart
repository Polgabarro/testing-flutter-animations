import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimationTicker extends StatefulWidget {
  const AnimationTicker({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationTicker> createState() => _AnimationState();
}

class _AnimationState extends State<AnimationTicker> {

  var x = 120.0;
  var alpha = 15.0;

  @override
  void initState() {
    var ticker = Ticker((elapsed) => setState(() {
      if (x >= 240) {
        x = 120;
      }
      x+= alpha;
    }));
    ticker.start();
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
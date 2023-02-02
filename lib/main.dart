import 'package:flutter/material.dart';

import 'animation_builder_widget.dart';
import 'animation_positioned.dart';
import 'animation_positioned_transition.dart';
import 'animation_tween.dart';
import 'animation_ticker.dart';
import 'animation_controller.dart';
import 'animation_tween_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: const [
                  //StaticWidget(),
                  //AnimationTicker(),
                  //AnimationControllerExample(),
                  //AnimationTweenExample(),
                  //AnimationBuilderWidget()
                  //AnimationPositionedTransition(),
                  //AnimationTweenBuilder(),
                  AnimationPositionedWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StaticWidget extends StatelessWidget {
  const StaticWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      height: 500.0,
      left: 120.0,
      child: FlutterLogo(
        size: 120.0,
      ),
    );
  }
}

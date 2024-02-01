// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:animated_text_kit/animated_text_kit.dart';

class AnimationText extends StatefulWidget {
  const AnimationText({
    super.key,
    this.width,
    this.height,
    this.text,
  });

  final double? width;
  final double? height;
  final String text;

  @override
  State<AnimationText> createState() => _AnimationTextState();
}

class _AnimationTextState extends State<AnimationText> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'Hello world!',
          textStyle: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          speed: const Duration(milliseconds: 2000),
        ),
      ],
      totalRepeatCount: 4,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    ));
  }
}

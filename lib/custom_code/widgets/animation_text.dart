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
    required this.text,
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
          TypewriterAnimatedText(widget.text),
        ],
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }
}

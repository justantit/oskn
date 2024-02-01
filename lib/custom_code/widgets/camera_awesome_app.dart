// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:better_open_file/better_open_file.dart';

class CameraAwesomeApp extends StatefulWidget {
  const CameraAwesomeApp({
    Key? key, // Add the Key parameter here
    this.width,
    this.height,
  }) : super(key: key); // Use super to call the constructor of the superclass

  final double? width;
  final double? height;

  @override
  State<CameraAwesomeApp> createState() => _CameraAwesomeAppState();
}

class _CameraAwesomeAppState extends State<CameraAwesomeApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:camerawesome/camerawesome_plugin.dart';

class CameraAwesomeApp extends StatefulWidget {
  const CameraAwesomeApp({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CameraAwesomeApp> createState() => _CameraAwesomeAppState();
}

class _CameraAwesomeAppState extends State<CameraAwesomeApp> {
  @override
  Widget build(BuildContext context) {
    return Container(CameraAwesomeBuilder.awesome(
      saveConfig: SaveConfig.photo(),
      onImageForAnalysis: analyzeImage,
      imageAnalysisConfig: AnalysisConfig(
        // Android specific options
        androidOptions: const AndroidAnalysisOptions.nv21(
          // Target width (CameraX will chose the closest resolution to this width)
          width: 250,
        ),
        // Wether to start automatically the analysis (true by default)
        autoStart: true,
        // Max frames per second, null for no limit (default)
        maxFramesPerSecond: 20,
      ),
    ));
  }
}

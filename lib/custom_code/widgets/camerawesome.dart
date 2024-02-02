// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/pigeon.dart';
import 'package:open_file/open_file.dart';

class Camerawesome extends StatefulWidget {
  const Camerawesome({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Camerawesome> createState() => _CamerawesomeState();
}

class _CamerawesomeState extends State<Camerawesome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CameraAwesomeBuilder.awesome(
        saveConfig: SaveConfig.photoAndVideo(),
        onMediaTap: (mediaCapture) {
          // OpenFile.open(mediaCapture);
          print('Tap on value');
        },
      ),
    );
  }
}

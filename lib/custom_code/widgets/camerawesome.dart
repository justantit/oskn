// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:face_camera/face_camera.dart';

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
  File? _capturedImage;

  @override
  Widget build(BuildContext context) {
    return Container(child: Builder(builder: (context) {
      if (_capturedImage != null) {
        return Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.file(
                _capturedImage!,
                width: double.maxFinite,
                fit: BoxFit.fitWidth,
              ),
              ElevatedButton(
                  onPressed: () => setState(() => _capturedImage = null),
                  child: const Text(
                    'Capture Again',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ))
            ],
          ),
        );
      }
      return SmartFaceCamera(
          autoCapture: true,
          defaultCameraLens: CameraLens.front,
          onCapture: (File? image) {
            setState(() => _capturedImage = image);
          },
          onFaceDetected: (Face? face) {
            //Do something
          },
          messageBuilder: (context, face) {
            if (face == null) {
              return _message('Place your face in the camera');
            }
            if (!face.wellPositioned) {
              return _message('Center your face in the square');
            }
            return const SizedBox.shrink();
          });
    }));
  }

  Widget _message(String msg) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
        child: Text(msg,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 14, height: 1.5, fontWeight: FontWeight.w400)),
      );
}

// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_segment_sdk/flutter_segment.dart';
import 'package:flutter_segment_sdk/segment_web.dart';

Future setTrackSegment() async {
  // Add your function code here!
  SegmentConfig(
    writeKey: 'ToFIPibaRx5wOwpUa2LRsJ2N3BxY2ul6',
    trackApplicationLifecycleEvents: false,
    amplitudeIntegrationEnabled: false,
    debug: false,
  );

  Segment.track(
    eventName: 'ButtonClicked',
    properties: {
      'foo': 'bar',
      'number': 1337,
      'clicked': true,
    },
  );
}

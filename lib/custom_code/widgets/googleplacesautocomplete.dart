// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_places_autocomplete_text_field/google_places_autocomplete_text_field.dart';
import 'package:google_places_autocomplete_text_field/model/prediction.dart';

class Googleplacesautocomplete extends StatefulWidget {
  const Googleplacesautocomplete({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<Googleplacesautocomplete> createState() =>
      _GoogleplacesautocompleteState();
}

class _GoogleplacesautocompleteState extends State<Googleplacesautocomplete> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GooglePlacesAutoCompleteTextFormField(
        textEditingController: controller,
        googleAPIKey: "AIzaSyBFeB_L5Ak7z-K33rBd44zLiBcp166XhEU",
        decoration: InputDecoration(
          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.w300,
              ),
          hintText: 'Your name',
          hintStyle: FlutterFlowTheme.of(context).labelMedium,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).tertiary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyMedium,
        debounceTime: 400,
        countries: ["cr"],
        getPlaceDetailWithLatLng: (prediction) {
          // this method will return latlng with place detail
          print("placeDetails " + prediction.lng.toString());
        }, // this callback is called when isLatLngRequired is true
        itmClick: (prediction) {
          controller.text = prediction.description.toString();
          controller.selection = TextSelection.fromPosition(
              TextPosition(offset: prediction.description.toString().length));
        },
      ),
    );
  }
}

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
        googleAPIKey:
            "AIzaSyBFeB_L5Ak7z-K33rBd44zLiBcp166XhEU", // Replace with your actual API key
        decoration: InputDecoration(
          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
          hintText: 'Email address',
          hintStyle: FlutterFlowTheme.of(context).labelLarge,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFB4B4B4),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).primaryText,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
        debounceTime: 400, // defaults to 600 ms,
        countries: [
          "cr"
        ], // optional, by default the list is empty (no restrictions)
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

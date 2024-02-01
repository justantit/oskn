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

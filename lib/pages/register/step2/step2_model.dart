import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'step2_widget.dart' show Step2Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Step2Model extends FlutterFlowModel<Step2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TFName widget.
  FocusNode? tFNameFocusNode;
  TextEditingController? tFNameController;
  String? Function(BuildContext, String?)? tFNameControllerValidator;
  // State field(s) for TFEmail widget.
  FocusNode? tFEmailFocusNode;
  TextEditingController? tFEmailController;
  String? Function(BuildContext, String?)? tFEmailControllerValidator;
  // State field(s) for TFPassword widget.
  FocusNode? tFPasswordFocusNode;
  TextEditingController? tFPasswordController;
  late bool tFPasswordVisibility;
  String? Function(BuildContext, String?)? tFPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tFPasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tFNameFocusNode?.dispose();
    tFNameController?.dispose();

    tFEmailFocusNode?.dispose();
    tFEmailController?.dispose();

    tFPasswordFocusNode?.dispose();
    tFPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

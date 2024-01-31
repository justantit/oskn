import '/flutter_flow/flutter_flow_util.dart';
import 'step2_widget.dart' show Step2Widget;
import 'package:flutter/material.dart';

class Step2Model extends FlutterFlowModel<Step2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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

  @override
  void initState(BuildContext context) {
    tFPasswordVisibility = false;
  }

  @override
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

import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

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
    tFEmailFocusNode?.dispose();
    tFEmailController?.dispose();

    tFPasswordFocusNode?.dispose();
    tFPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

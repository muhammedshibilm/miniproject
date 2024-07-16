import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for aadhar widget.
  FocusNode? aadharFocusNode;
  TextEditingController? aadharTextController;
  String? Function(BuildContext, String?)? aadharTextControllerValidator;
  String? _aadharTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for passwordconfirm widget.
  FocusNode? passwordconfirmFocusNode;
  TextEditingController? passwordconfirmTextController;
  late bool passwordconfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordconfirmTextControllerValidator;
  String? _passwordconfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for emaillogin widget.
  FocusNode? emailloginFocusNode;
  TextEditingController? emailloginTextController;
  String? Function(BuildContext, String?)? emailloginTextControllerValidator;
  String? _emailloginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passwordlogin widget.
  FocusNode? passwordloginFocusNode;
  TextEditingController? passwordloginTextController;
  late bool passwordloginVisibility;
  String? Function(BuildContext, String?)? passwordloginTextControllerValidator;
  String? _passwordloginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    aadharTextControllerValidator = _aadharTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    passwordconfirmVisibility = false;
    passwordconfirmTextControllerValidator =
        _passwordconfirmTextControllerValidator;
    emailloginTextControllerValidator = _emailloginTextControllerValidator;
    passwordloginVisibility = false;
    passwordloginTextControllerValidator =
        _passwordloginTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    aadharFocusNode?.dispose();
    aadharTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordconfirmFocusNode?.dispose();
    passwordconfirmTextController?.dispose();

    emailloginFocusNode?.dispose();
    emailloginTextController?.dispose();

    passwordloginFocusNode?.dispose();
    passwordloginTextController?.dispose();
  }
}

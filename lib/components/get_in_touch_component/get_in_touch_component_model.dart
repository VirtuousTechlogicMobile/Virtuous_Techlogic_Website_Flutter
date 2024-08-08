import 'package:flutter/material.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'get_in_touch_component_widget.dart' show GetInTouchComponentWidget;

class GetInTouchComponentModel
    extends FlutterFlowModel<GetInTouchComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for clientEmailAddress12 widget.
  FocusNode? clientEmailAddress12FocusNode;
  TextEditingController? clientEmailAddress12TextController;
  String? Function(BuildContext, String?)?
      clientEmailAddress12TextControllerValidator;
  String? _clientEmailAddress12TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'example@gmail.com';
    }
    return null;
  }

  // State field(s) for clientPhoneNumber12 widget.
  FocusNode? clientPhoneNumber12FocusNode;
  TextEditingController? clientPhoneNumber12TextController;
  String? Function(BuildContext, String?)?
      clientPhoneNumber12TextControllerValidator;
  String? _clientPhoneNumber12TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone number is required';
    }

    if (val.length < 10) {
      return 'invalid number';
    }
    if (val.length > 10) {
      return 'invalid number';
    }
    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return 'invalid number';
    }
    return null;
  }

  // State field(s) for clientProject12 widget.
  FocusNode? clientProject12FocusNode;
  TextEditingController? clientProject12TextController;
  String? Function(BuildContext, String?)?
      clientProject12TextControllerValidator;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel1;
  // State field(s) for clientEmail11 widget.
  FocusNode? clientEmail11FocusNode;
  TextEditingController? clientEmail11TextController;
  String? Function(BuildContext, String?)? clientEmail11TextControllerValidator;
  String? _clientEmail11TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'example : abc@gmail.com';
    }
    return null;
  }

  // State field(s) for clientPhoneNumber11 widget.
  FocusNode? clientPhoneNumber11FocusNode;
  TextEditingController? clientPhoneNumber11TextController;
  String? Function(BuildContext, String?)?
      clientPhoneNumber11TextControllerValidator;
  String? _clientPhoneNumber11TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Enter Valid Phone Number';
    }
    if (val.length > 10) {
      return 'Enter Valid Phone Number';
    }

    return null;
  }

  // State field(s) for clientProject11 widget.
  FocusNode? clientProject11FocusNode;
  TextEditingController? clientProject11TextController;
  String? Function(BuildContext, String?)?
      clientProject11TextControllerValidator;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel2;

  @override
  void initState(BuildContext context) {
    clientEmailAddress12TextControllerValidator =
        _clientEmailAddress12TextControllerValidator;
    clientPhoneNumber12TextControllerValidator =
        _clientPhoneNumber12TextControllerValidator;
    getInTouchButtonCompModel1 =
        createModel(context, () => GetInTouchButtonCompModel());
    clientEmail11TextControllerValidator =
        _clientEmail11TextControllerValidator;
    clientPhoneNumber11TextControllerValidator =
        _clientPhoneNumber11TextControllerValidator;
    getInTouchButtonCompModel2 =
        createModel(context, () => GetInTouchButtonCompModel());
  }

  @override
  void dispose() {
    clientEmailAddress12FocusNode?.dispose();
    clientEmailAddress12TextController?.dispose();

    clientPhoneNumber12FocusNode?.dispose();
    clientPhoneNumber12TextController?.dispose();

    clientProject12FocusNode?.dispose();
    clientProject12TextController?.dispose();

    getInTouchButtonCompModel1.dispose();
    clientEmail11FocusNode?.dispose();
    clientEmail11TextController?.dispose();

    clientPhoneNumber11FocusNode?.dispose();
    clientPhoneNumber11TextController?.dispose();

    clientProject11FocusNode?.dispose();
    clientProject11TextController?.dispose();

    getInTouchButtonCompModel2.dispose();
  }
}

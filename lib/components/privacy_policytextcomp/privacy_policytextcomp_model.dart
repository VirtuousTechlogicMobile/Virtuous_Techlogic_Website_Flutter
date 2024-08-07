import '/components/privacy_policy_comp/privacy_policy_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'privacy_policytextcomp_widget.dart' show PrivacyPolicytextcompWidget;
import 'package:flutter/material.dart';

class PrivacyPolicytextcompModel
    extends FlutterFlowModel<PrivacyPolicytextcompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for privacyPolicyComp component.
  late PrivacyPolicyCompModel privacyPolicyCompModel;

  @override
  void initState(BuildContext context) {
    privacyPolicyCompModel =
        createModel(context, () => PrivacyPolicyCompModel());
  }

  @override
  void dispose() {
    privacyPolicyCompModel.dispose();
  }
}

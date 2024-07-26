import 'package:flutter/material.dart';

import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'firstcomp_mobile_widget.dart' show FirstcompMobileWidget;

class FirstcompMobileModel extends FlutterFlowModel<FirstcompMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for browseServicesButtonComp component.
  late BrowseServicesButtonCompModel browseServicesButtonCompModel;

  @override
  void initState(BuildContext context) {
    browseServicesButtonCompModel =
        createModel(context, () => BrowseServicesButtonCompModel());
  }

  @override
  void dispose() {
    browseServicesButtonCompModel.dispose();
  }
}

import 'package:flutter/material.dart';

import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../language_comp/language_comp_model.dart';
import 'first_comptablet_widget.dart' show FirstComptabletWidget;

class FirstComptabletModel extends FlutterFlowModel<FirstComptabletWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel;
  // Model for browseServicesButtonComp component.
  late BrowseServicesButtonCompModel browseServicesButtonCompModel;
  // Model for languageCompDesktop component.
  late LanguageCompModel languageCompModel;

  @override
  void initState(BuildContext context) {
    getInTouchButtonCompModel =
        createModel(context, () => GetInTouchButtonCompModel());
    browseServicesButtonCompModel =
        createModel(context, () => BrowseServicesButtonCompModel());
    languageCompModel = createModel(context, () => LanguageCompModel());
  }

  @override
  void dispose() {
    getInTouchButtonCompModel.dispose();
    browseServicesButtonCompModel.dispose();
    languageCompModel.dispose();
  }
}

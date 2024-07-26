import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/components/circle_image_animation_widget.dart';
import '/components/language_comp_desktop/language_comp_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'first_comp_widget.dart' show FirstCompWidget;
import 'package:flutter/material.dart';

class FirstCompModel extends FlutterFlowModel<FirstCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for browseServicesButtonComp component.
  late BrowseServicesButtonCompModel browseServicesButtonCompModel;
  // Model for languageCompDesktop component.
  late LanguageCompDesktopModel languageCompDesktopModel;
  // Model for circleImageAnimation component.
  late CircleImageAnimationModel circleImageAnimationModel1;
  // Model for circleImageAnimation component.
  late CircleImageAnimationModel circleImageAnimationModel2;
  // Model for circleImageAnimation component.
  late CircleImageAnimationModel circleImageAnimationModel3;
  // Model for circleImageAnimation component.
  late CircleImageAnimationModel circleImageAnimationModel4;
  // Model for circleImageAnimation component.
  late CircleImageAnimationModel circleImageAnimationModel5;
  // Model for circleImageAnimation component.
  late CircleImageAnimationModel circleImageAnimationModel6;

  @override
  void initState(BuildContext context) {
    browseServicesButtonCompModel =
        createModel(context, () => BrowseServicesButtonCompModel());
    languageCompDesktopModel =
        createModel(context, () => LanguageCompDesktopModel());
    circleImageAnimationModel1 =
        createModel(context, () => CircleImageAnimationModel());
    circleImageAnimationModel2 =
        createModel(context, () => CircleImageAnimationModel());
    circleImageAnimationModel3 =
        createModel(context, () => CircleImageAnimationModel());
    circleImageAnimationModel4 =
        createModel(context, () => CircleImageAnimationModel());
    circleImageAnimationModel5 =
        createModel(context, () => CircleImageAnimationModel());
    circleImageAnimationModel6 =
        createModel(context, () => CircleImageAnimationModel());
  }

  @override
  void dispose() {
    browseServicesButtonCompModel.dispose();
    languageCompDesktopModel.dispose();
    circleImageAnimationModel1.dispose();
    circleImageAnimationModel2.dispose();
    circleImageAnimationModel3.dispose();
    circleImageAnimationModel4.dispose();
    circleImageAnimationModel5.dispose();
    circleImageAnimationModel6.dispose();
  }
}

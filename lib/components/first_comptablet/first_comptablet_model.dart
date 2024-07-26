import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/get_in_touch_component/get_in_touch_component_widget.dart';
import '/components/language_comp_desktop/language_comp_desktop_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'first_comptablet_widget.dart' show FirstComptabletWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FirstComptabletModel extends FlutterFlowModel<FirstComptabletWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel;
  // Model for browseServicesButtonComp component.
  late BrowseServicesButtonCompModel browseServicesButtonCompModel;
  // Model for languageCompDesktop component.
  late LanguageCompDesktopModel languageCompDesktopModel;

  @override
  void initState(BuildContext context) {
    getInTouchButtonCompModel =
        createModel(context, () => GetInTouchButtonCompModel());
    browseServicesButtonCompModel =
        createModel(context, () => BrowseServicesButtonCompModel());
    languageCompDesktopModel =
        createModel(context, () => LanguageCompDesktopModel());
  }

  @override
  void dispose() {
    getInTouchButtonCompModel.dispose();
    browseServicesButtonCompModel.dispose();
    languageCompDesktopModel.dispose();
  }
}

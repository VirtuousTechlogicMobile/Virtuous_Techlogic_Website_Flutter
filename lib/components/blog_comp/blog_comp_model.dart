import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'blog_comp_widget.dart' show BlogCompWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogCompModel extends FlutterFlowModel<BlogCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel1;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel2;

  @override
  void initState(BuildContext context) {
    getInTouchButtonCompModel1 =
        createModel(context, () => GetInTouchButtonCompModel());
    getInTouchButtonCompModel2 =
        createModel(context, () => GetInTouchButtonCompModel());
  }

  @override
  void dispose() {
    getInTouchButtonCompModel1.dispose();
    getInTouchButtonCompModel2.dispose();
  }
}

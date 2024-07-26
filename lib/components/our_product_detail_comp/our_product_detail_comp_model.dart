import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/button_component/view_live_app_button_comp/view_live_app_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'our_product_detail_comp_widget.dart' show OurProductDetailCompWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OurProductDetailCompModel
    extends FlutterFlowModel<OurProductDetailCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for viewLiveAppButtonComp component.
  late ViewLiveAppButtonCompModel viewLiveAppButtonCompModel1;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel1;
  // Model for viewLiveAppButtonComp component.
  late ViewLiveAppButtonCompModel viewLiveAppButtonCompModel2;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel2;

  @override
  void initState(BuildContext context) {
    viewLiveAppButtonCompModel1 =
        createModel(context, () => ViewLiveAppButtonCompModel());
    getInTouchButtonCompModel1 =
        createModel(context, () => GetInTouchButtonCompModel());
    viewLiveAppButtonCompModel2 =
        createModel(context, () => ViewLiveAppButtonCompModel());
    getInTouchButtonCompModel2 =
        createModel(context, () => GetInTouchButtonCompModel());
  }

  @override
  void dispose() {
    viewLiveAppButtonCompModel1.dispose();
    getInTouchButtonCompModel1.dispose();
    viewLiveAppButtonCompModel2.dispose();
    getInTouchButtonCompModel2.dispose();
  }
}

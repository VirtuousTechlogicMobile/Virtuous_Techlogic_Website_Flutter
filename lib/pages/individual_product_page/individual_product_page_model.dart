import '/backend/backend.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/explore_product_comp/explore_product_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/our_product_detail_comp/our_product_detail_comp_widget.dart';
import '/components/request_quote_comp/request_quote_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'individual_product_page_widget.dart' show IndividualProductPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndividualProductPageModel
    extends FlutterFlowModel<IndividualProductPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for ourProductDetailComp component.
  late OurProductDetailCompModel ourProductDetailCompModel1;
  // Model for exploreProductComp component.
  late ExploreProductCompModel exploreProductCompModel1;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for ourProductDetailComp component.
  late OurProductDetailCompModel ourProductDetailCompModel2;
  // Model for exploreProductComp component.
  late ExploreProductCompModel exploreProductCompModel2;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for ourProductDetailComp component.
  late OurProductDetailCompModel ourProductDetailCompModel3;
  // Model for exploreProductComp component.
  late ExploreProductCompModel exploreProductCompModel3;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    ourProductDetailCompModel1 =
        createModel(context, () => OurProductDetailCompModel());
    exploreProductCompModel1 =
        createModel(context, () => ExploreProductCompModel());
    requestQuoteCompModel1 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    ourProductDetailCompModel2 =
        createModel(context, () => OurProductDetailCompModel());
    exploreProductCompModel2 =
        createModel(context, () => ExploreProductCompModel());
    requestQuoteCompModel2 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    ourProductDetailCompModel3 =
        createModel(context, () => OurProductDetailCompModel());
    exploreProductCompModel3 =
        createModel(context, () => ExploreProductCompModel());
    requestQuoteCompModel3 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    ourProductDetailCompModel1.dispose();
    exploreProductCompModel1.dispose();
    requestQuoteCompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    ourProductDetailCompModel2.dispose();
    exploreProductCompModel2.dispose();
    requestQuoteCompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    ourProductDetailCompModel3.dispose();
    exploreProductCompModel3.dispose();
    requestQuoteCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}

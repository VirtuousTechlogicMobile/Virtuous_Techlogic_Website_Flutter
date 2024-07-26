import 'package:flutter/material.dart';

import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/explore_our_blogs_comp/explore_our_blogs_comp_widget.dart';
import '/components/explore_our_offering_comp/explore_our_offering_comp_widget.dart';
import '/components/first_comp/first_comp_widget.dart';
import '/components/first_comptablet/first_comptablet_widget.dart';
import '/components/firstcomp_mobile/firstComp_mobile_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/our_culture_comp/our_culture_comp_widget.dart';
import '/components/our_customer_says_comp/our_customer_says_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/components/why_choose_us_for_home_comp/why_choose_us_for_home_comp_widget.dart';
import '/components/why_choose_us_for_mobile_comp/why_choose_us_for_mobile_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for firstcompMobile component.
  late FirstcompMobileModel firstcompMobileModel;
  // Model for exploreOurOfferingComp component.
  late ExploreOurOfferingCompModel exploreOurOfferingCompModel1;
  // Model for whyChooseUsForMobileComp component.
  late WhyChooseUsForMobileCompModel whyChooseUsForMobileCompModel;
  // Model for ourCultureComp component.
  late OurCultureCompModel ourCultureCompModel1;
  // Model for OurCustomerSaysComp component.
  late OurCustomerSaysCompModel ourCustomerSaysCompModel1;
  // Model for exploreOurBlogsComp component.
  late ExploreOurBlogsCompModel exploreOurBlogsCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for firstComptablet component.
  late FirstComptabletModel firstComptabletModel;
  // Model for exploreOurOfferingComp component.
  late ExploreOurOfferingCompModel exploreOurOfferingCompModel2;
  // Model for whyChooseUsForHomeComp component.
  late WhyChooseUsForHomeCompModel whyChooseUsForHomeCompModel1;
  // Model for ourCultureComp component.
  late OurCultureCompModel ourCultureCompModel2;
  // Model for OurCustomerSaysComp component.
  late OurCustomerSaysCompModel ourCustomerSaysCompModel2;
  // Model for exploreOurBlogsComp component.
  late ExploreOurBlogsCompModel exploreOurBlogsCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for firstComp component.
  late FirstCompModel firstCompModel;
  // Model for exploreOurOfferingComp component.
  late ExploreOurOfferingCompModel exploreOurOfferingCompModel3;
  // Model for whyChooseUsForHomeComp component.
  late WhyChooseUsForHomeCompModel whyChooseUsForHomeCompModel2;
  // Model for ourCultureComp component.
  late OurCultureCompModel ourCultureCompModel3;
  // Model for OurCustomerSaysComp component.
  late OurCustomerSaysCompModel ourCustomerSaysCompModel3;
  // Model for exploreOurBlogsComp component.
  late ExploreOurBlogsCompModel exploreOurBlogsCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    firstcompMobileModel = createModel(context, () => FirstcompMobileModel());
    exploreOurOfferingCompModel1 =
        createModel(context, () => ExploreOurOfferingCompModel());
    whyChooseUsForMobileCompModel =
        createModel(context, () => WhyChooseUsForMobileCompModel());
    ourCultureCompModel1 = createModel(context, () => OurCultureCompModel());
    ourCustomerSaysCompModel1 =
        createModel(context, () => OurCustomerSaysCompModel());
    exploreOurBlogsCompModel1 =
        createModel(context, () => ExploreOurBlogsCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    firstComptabletModel = createModel(context, () => FirstComptabletModel());
    exploreOurOfferingCompModel2 =
        createModel(context, () => ExploreOurOfferingCompModel());
    whyChooseUsForHomeCompModel1 =
        createModel(context, () => WhyChooseUsForHomeCompModel());
    ourCultureCompModel2 = createModel(context, () => OurCultureCompModel());
    ourCustomerSaysCompModel2 =
        createModel(context, () => OurCustomerSaysCompModel());
    exploreOurBlogsCompModel2 =
        createModel(context, () => ExploreOurBlogsCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    firstCompModel = createModel(context, () => FirstCompModel());
    exploreOurOfferingCompModel3 =
        createModel(context, () => ExploreOurOfferingCompModel());
    whyChooseUsForHomeCompModel2 =
        createModel(context, () => WhyChooseUsForHomeCompModel());
    ourCultureCompModel3 = createModel(context, () => OurCultureCompModel());
    ourCustomerSaysCompModel3 =
        createModel(context, () => OurCustomerSaysCompModel());
    exploreOurBlogsCompModel3 =
        createModel(context, () => ExploreOurBlogsCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    firstcompMobileModel.dispose();
    exploreOurOfferingCompModel1.dispose();
    whyChooseUsForMobileCompModel.dispose();
    ourCultureCompModel1.dispose();
    ourCustomerSaysCompModel1.dispose();
    exploreOurBlogsCompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    firstComptabletModel.dispose();
    exploreOurOfferingCompModel2.dispose();
    whyChooseUsForHomeCompModel1.dispose();
    ourCultureCompModel2.dispose();
    ourCustomerSaysCompModel2.dispose();
    exploreOurBlogsCompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    firstCompModel.dispose();
    exploreOurOfferingCompModel3.dispose();
    whyChooseUsForHomeCompModel2.dispose();
    ourCultureCompModel3.dispose();
    ourCustomerSaysCompModel3.dispose();
    exploreOurBlogsCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}

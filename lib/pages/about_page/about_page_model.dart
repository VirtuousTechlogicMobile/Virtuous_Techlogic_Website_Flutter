import '/components/about_us_comp/about_us_comp_widget.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/language_comp/language_comp_widget.dart';
import '/components/language_comp_desktop/language_comp_desktop_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/our_culture_comp/our_culture_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/components/why_choose_us_about_us_comp/why_choose_us_about_us_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'about_page_widget.dart' show AboutPageWidget;
import 'package:flutter/material.dart';

class AboutPageModel extends FlutterFlowModel<AboutPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for aboutUsComp component.
  late AboutUsCompModel aboutUsCompModel1;
  // Model for languageComp component.
  late LanguageCompModel languageCompModel1;
  // Model for ourCultureComp component.
  late OurCultureCompModel ourCultureCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for aboutUsComp component.
  late AboutUsCompModel aboutUsCompModel2;
  // Model for languageComp component.
  late LanguageCompModel languageCompModel2;
  // Model for whyChooseUsAboutUsComp component.
  late WhyChooseUsAboutUsCompModel whyChooseUsAboutUsCompModel1;
  // Model for ourCultureComp component.
  late OurCultureCompModel ourCultureCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for aboutUsComp component.
  late AboutUsCompModel aboutUsCompModel3;
  // Model for languageCompDesktop component.
  late LanguageCompDesktopModel languageCompDesktopModel;
  // Model for whyChooseUsAboutUsComp component.
  late WhyChooseUsAboutUsCompModel whyChooseUsAboutUsCompModel2;
  // Model for ourCultureComp component.
  late OurCultureCompModel ourCultureCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    aboutUsCompModel1 = createModel(context, () => AboutUsCompModel());
    languageCompModel1 = createModel(context, () => LanguageCompModel());
    ourCultureCompModel1 = createModel(context, () => OurCultureCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    aboutUsCompModel2 = createModel(context, () => AboutUsCompModel());
    languageCompModel2 = createModel(context, () => LanguageCompModel());
    whyChooseUsAboutUsCompModel1 =
        createModel(context, () => WhyChooseUsAboutUsCompModel());
    ourCultureCompModel2 = createModel(context, () => OurCultureCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    aboutUsCompModel3 = createModel(context, () => AboutUsCompModel());
    languageCompDesktopModel =
        createModel(context, () => LanguageCompDesktopModel());
    whyChooseUsAboutUsCompModel2 =
        createModel(context, () => WhyChooseUsAboutUsCompModel());
    ourCultureCompModel3 = createModel(context, () => OurCultureCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    aboutUsCompModel1.dispose();
    languageCompModel1.dispose();
    ourCultureCompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    aboutUsCompModel2.dispose();
    languageCompModel2.dispose();
    whyChooseUsAboutUsCompModel1.dispose();
    ourCultureCompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    aboutUsCompModel3.dispose();
    languageCompDesktopModel.dispose();
    whyChooseUsAboutUsCompModel2.dispose();
    ourCultureCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}

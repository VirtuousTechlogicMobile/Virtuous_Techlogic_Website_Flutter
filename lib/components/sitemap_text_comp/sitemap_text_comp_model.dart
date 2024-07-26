import '/components/sitemap_comp/sitemap_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sitemap_text_comp_widget.dart' show SitemapTextCompWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SitemapTextCompModel extends FlutterFlowModel<SitemapTextCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for sitemapComp component.
  late SitemapCompModel sitemapCompModel;

  @override
  void initState(BuildContext context) {
    sitemapCompModel = createModel(context, () => SitemapCompModel());
  }

  @override
  void dispose() {
    sitemapCompModel.dispose();
  }
}

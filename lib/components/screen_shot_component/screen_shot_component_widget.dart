import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'screen_shot_component_model.dart';

export 'screen_shot_component_model.dart';

class ScreenShotComponentWidget extends StatefulWidget {
  const ScreenShotComponentWidget({
    super.key,
    this.mobileImage,
    this.tabletImage,
    this.desktopImage,
    this.mobileImagelist,
    this.tabletImagelist,
    this.desktopImagelist,
  });

  final String? mobileImage;
  final String? tabletImage;
  final String? desktopImage;
  final List<String>? mobileImagelist;
  final List<String>? tabletImagelist;
  final List<String>? desktopImagelist;

  @override
  State<ScreenShotComponentWidget> createState() =>
      _ScreenShotComponentWidgetState();
}

class _ScreenShotComponentWidgetState extends State<ScreenShotComponentWidget>
    with TickerProviderStateMixin {
  late ScreenShotComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScreenShotComponentModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 700.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment(0.0, 0),
                child: TabBar(
                  labelColor: FlutterFlowTheme.of(context).primary,
                  unselectedLabelColor:
                      FlutterFlowTheme.of(context).text16Colo2,
                  labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                  unselectedLabelStyle: TextStyle(),
                  indicatorColor: FlutterFlowTheme.of(context).primary,
                  padding: EdgeInsets.all(2.0),
                  tabs: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.phone_iphone,
                          ),
                        ),
                        Tab(
                          text: 'Mobile',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.tablet_mac,
                          ),
                        ),
                        Tab(
                          text: 'Tablet',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.desktop_windows_sharp,
                          ),
                        ),
                        Tab(
                          text: 'Desktop',
                        ),
                      ],
                    ),
                  ],
                  controller: _model.tabBarController,
                  onTap: (i) async {
                    [() async {}, () async {}, () async {}][i]();
                  },
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                widget!.mobileImage,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ogkn9339humk/img7.png',
                              ),
                              width: 900.0,
                              height: 350.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final mobileImagelist =
                                          widget!.mobileImagelist?.toList() ??
                                              [];
                                      if (mobileImagelist.isEmpty) {
                                        return Image.asset(
                                          'assets/images/error-image-generic.png',
                                        );
                                      }

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: mobileImagelist.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 10.0),
                                        itemBuilder:
                                            (context, mobileImagelistIndex) {
                                          final mobileImagelistItem =
                                              mobileImagelist[
                                                  mobileImagelistIndex];
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.network(
                                              widget!.mobileImagelist![
                                                  mobileImagelistIndex],
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 72.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 148.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 285.0;
                                                } else {
                                                  return 285.0;
                                                }
                                              }(),
                                              height: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 72.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 148.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 200.0;
                                                } else {
                                                  return 200.0;
                                                }
                                              }(),
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final mobileImagelist =
                                          widget!.mobileImagelist?.toList() ??
                                              [];
                                      if (mobileImagelist.isEmpty) {
                                        return Image.asset(
                                          'assets/images/logo.png',
                                        );
                                      }

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: mobileImagelist.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 10.0),
                                        itemBuilder:
                                            (context, mobileImagelistIndex) {
                                          final mobileImagelistItem =
                                              mobileImagelist[
                                                  mobileImagelistIndex];
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              widget!.mobileImagelist![
                                                  mobileImagelistIndex],
                                              width: 72.0,
                                              height: 72.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                widget!.tabletImage,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ogkn9339humk/img7.png',
                              ),
                              width: 900.0,
                              height: 350.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final listOfTabletImages =
                                          widget!.tabletImagelist?.toList() ??
                                              [];

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: listOfTabletImages.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 10.0),
                                        itemBuilder:
                                            (context, listOfTabletImagesIndex) {
                                          final listOfTabletImagesItem =
                                              listOfTabletImages[
                                                  listOfTabletImagesIndex];
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.network(
                                              widget!.mobileImagelist![
                                                  listOfTabletImagesIndex],
                                              width: 285.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final listOfTabletImages =
                                          widget!.tabletImagelist?.toList() ??
                                              [];

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: listOfTabletImages.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 10.0),
                                        itemBuilder:
                                            (context, listOfTabletImagesIndex) {
                                          final listOfTabletImagesItem =
                                              listOfTabletImages[
                                                  listOfTabletImagesIndex];
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              widget!.mobileImagelist![
                                                  listOfTabletImagesIndex],
                                              width: 72.0,
                                              height: 72.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                widget!.desktopImage,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ogkn9339humk/img7.png',
                              ),
                              width: 900.0,
                              height: 350.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final listOfDesktopImages =
                                          widget!.desktopImagelist?.toList() ??
                                              [];

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: listOfDesktopImages.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 10.0),
                                        itemBuilder: (context,
                                            listOfDesktopImagesIndex) {
                                          final listOfDesktopImagesItem =
                                              listOfDesktopImages[
                                                  listOfDesktopImagesIndex];
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.network(
                                              widget!.mobileImagelist![
                                                  listOfDesktopImagesIndex],
                                              width: 250.0,
                                              height: 150.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 200.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final listOfDesktopImages =
                                          widget!.desktopImagelist?.toList() ??
                                              [];

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: listOfDesktopImages.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(width: 10.0),
                                        itemBuilder: (context,
                                            listOfDesktopImagesIndex) {
                                          final listOfDesktopImagesItem =
                                              listOfDesktopImages[
                                                  listOfDesktopImagesIndex];
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image.network(
                                              widget!.mobileImagelist![
                                                  listOfDesktopImagesIndex],
                                              width: 72.0,
                                              height: 72.0,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

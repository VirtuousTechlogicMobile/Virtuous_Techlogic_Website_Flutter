import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'share_blog_model.dart';
export 'share_blog_model.dart';

class ShareBlogWidget extends StatefulWidget {
  const ShareBlogWidget({
    super.key,
    required this.blogTitle,
    required this.blogReference,
  });

  final String? blogTitle;
  final DocumentReference? blogReference;

  @override
  State<ShareBlogWidget> createState() => _ShareBlogWidgetState();
}

class _ShareBlogWidgetState extends State<ShareBlogWidget> {
  late ShareBlogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShareBlogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 350.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('SHARE_BLOG_COMP_Column_hlbm48wn_ON_TAP');
            await Clipboard.setData(ClipboardData(
                text:
                    'https://virtuoustechlogic.com/individualBlogPage?blogRef=${widget!.blogReference?.id}&blogTitle=${widget!.blogTitle}'));
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Share to other apps',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Raleway',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Raleway'),
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 14.0,
                        borderWidth: 1.0,
                        buttonSize: 65.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        hoverColor: FlutterFlowTheme.of(context).primary,
                        hoverIconColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'SHARE_BLOG_COMP_facebookF_ICN_ON_TAP');
                          await launchURL(
                              'https://www.facebook.com/sharer/sharer.php?u=https://virtuoustechlogic.com/individualBlogPage?blogRef=${widget!.blogReference?.id}&blogTitle=${Uri.encodeComponent((widget!.blogTitle!))}');
                        },
                      ),
                      Text(
                        'Facebook',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 14.0,
                        borderWidth: 1.0,
                        buttonSize: 65.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        hoverColor: FlutterFlowTheme.of(context).primary,
                        hoverIconColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'SHARE_BLOG_COMP_instagram_ICN_ON_TAP');
                          await actions.socialMediablogShare(
                            widget!.blogReference!,
                            widget!.blogTitle!,
                            'https://api.whatsapp.com/send?text=',
                          );
                        },
                      ),
                      Text(
                        'Instagram',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: SelectionArea(
                              child: Text(
                            'https://virtuoustechlogic.com/individualBlogPage?blogRef=${widget!.blogReference?.id}&blogTitle=${Uri.encodeComponent((widget!.blogTitle!))}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          )),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'SHARE_BLOG_COMP_Icon_h3y7faep_ON_TAP');
                                await Clipboard.setData(ClipboardData(
                                    text:
                                        'https://virtuoustechlogic.com/individualBlogPage?blogRef=${widget!.blogReference?.id}&blogTitle=${Uri.encodeComponent((widget!.blogTitle!))}'));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Link copied to clipboard!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            shadows: [
                                              Shadow(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                offset: Offset(1.0, 1.0),
                                                blurRadius: 1.0,
                                              )
                                            ],
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.content_copy,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

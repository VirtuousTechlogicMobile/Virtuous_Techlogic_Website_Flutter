import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'share_blog_model.dart';

export 'share_blog_model.dart';

class ShareBlogWidget extends StatefulWidget {
  const ShareBlogWidget({
    super.key,
    required this.blogTitle,
  });

  final String blogTitle;

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

  Future<void> _shareToFacebook(String url) async {
    final fbUrl =
        'https://www.facebook.com/sharer/sharer.php?u=${Uri.encodeComponent(url)}';
    await _launchURL(fbUrl);
  }

  Future<void> _shareToInstagram(String url) async {
    final instaUrl =
        'https://www.instagram.com/create/story/?media=${Uri.encodeComponent(url)}';
    await _launchURL(instaUrl);
  }

  Future<void> _shareToTwitter(String url) async {
    final twitterUrl =
        'https://twitter.com/intent/tweet?url=${Uri.encodeComponent(url)}';
    await _launchURL(twitterUrl);
  }

  Future<void> _shareToLinkedIn(String url) async {
    final linkedInUrl =
        'https://www.linkedin.com/shareArticle?mini=true&url=${Uri.encodeComponent(url)}';
    await _launchURL(linkedInUrl);
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    final shareUrl =
        'https://virtuoustechlogic.com/individualBlogPage/${widget.blogTitle.replaceAll(' ', '+')}';

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 450.0,
          height: 350.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await Clipboard.setData(ClipboardData(text: shareUrl));
                _showToast('Link copied to clipboard!');
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
                        alignment: const AlignmentDirectional(1, -1),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'SHARE_BLOG_COMP_Icon_pl7468wn_ON_TAP');
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Wrap(
                          spacing: 16.0,
                          runSpacing: 16.0,
                          alignment: WrapAlignment.center,
                          children: [
                            _buildSocialButton(
                              context,
                              icon: FontAwesomeIcons.facebookF,
                              label: 'Facebook',
                              onPressed: () => _shareToFacebook(shareUrl),
                            ),
                            _buildSocialButton(
                              context,
                              icon: FontAwesomeIcons.instagram,
                              label: 'Instagram',
                              onPressed: () => _shareToInstagram(shareUrl),
                            ),
                            _buildSocialButton(
                              context,
                              icon: FontAwesomeIcons.twitter,
                              label: 'Twitter',
                              onPressed: () => _shareToTwitter(shareUrl),
                            ),
                            _buildSocialButton(
                              context,
                              icon: FontAwesomeIcons.linkedinIn,
                              label: 'LinkedIn',
                              onPressed: () => _shareToLinkedIn(shareUrl),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    shareUrl,
                                    overflow: TextOverflow.ellipsis,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Clipboard.setData(
                                          ClipboardData(text: shareUrl));
                                      _showToast('Link copied to clipboard!');
                                    },
                                    child: Icon(
                                      Icons.content_copy,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              indent: 0,
                              height: 0,
                              color: FlutterFlowTheme.of(context).primaryText,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSocialButton(BuildContext context,
      {required IconData icon,
      required String label,
      required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).primary,
            borderRadius: 14.0,
            borderWidth: 1.0,
            buttonSize: 65.0,
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            hoverColor: FlutterFlowTheme.of(context).primary,
            hoverIconColor: FlutterFlowTheme.of(context).primaryBackground,
            icon: FaIcon(
              icon,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
            onPressed: onPressed,
          ),
          Text(
            label,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
          ),
        ],
      ),
    );
  }
}

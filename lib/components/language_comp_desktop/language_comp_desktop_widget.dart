import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:virtuous_techlogic_website/custom_code/widgets/index.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'language_comp_desktop_model.dart';

export 'language_comp_desktop_model.dart';

class LanguageCompDesktopWidget extends StatefulWidget {
  const LanguageCompDesktopWidget({super.key});

  @override
  State<LanguageCompDesktopWidget> createState() =>
      _LanguageCompDesktopWidgetState();
}

class _LanguageCompDesktopWidgetState extends State<LanguageCompDesktopWidget> {
  late LanguageCompDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageCompDesktopModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 0),
                        fadeOutDuration: const Duration(milliseconds: 0),
                        imageUrl:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/mbh3nn6zxztb/flutterflowlogo.webp',
                        height: 36.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/0riln566p171/flutterlogo.webp',
                        height: 36.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/3hwo0f4bvbfe/figmalogo.webp',
                        height: 36.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/5t5pd7ilz4hd/bubblelogo.webp',
                        height: 36.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/hs7ol5hxz9hr/firebaselogo.webp',
                        height: 36.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ].divide(const SizedBox(width: 20.0)),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            AnimatedContainer(
              duration: const Duration(milliseconds: 50),
              curve: Curves.elasticOut,
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          placeholder: (context, url) {
                            return const LoaderWidget(
                              width: 50,
                            );
                          },
                          imageUrl:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/mbh3nn6zxztb/flutterflowlogo.webp',
                          height: 36.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          placeholder: (context, url) {
                            return const LoaderWidget(
                              width: 50,
                            );
                          },
                          imageUrl:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/0riln566p171/flutterlogo.webp',
                          height: 36.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          placeholder: (context, url) {
                            return const LoaderWidget(
                              width: 50,
                            );
                          },
                          imageUrl:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/3hwo0f4bvbfe/figmalogo.webp',
                          height: 36.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          placeholder: (context, url) {
                            return const LoaderWidget(
                              width: 50,
                            );
                          },
                          imageUrl:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/5t5pd7ilz4hd/bubblelogo.webp',
                          height: 36.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          placeholder: (context, url) {
                            return const LoaderWidget(
                              width: 50,
                            );
                          },
                          imageUrl:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/hs7ol5hxz9hr/firebaselogo.webp',
                          height: 36.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ]
                        .divide(const SizedBox(width: 20.0))
                        .addToStart(const SizedBox(width: 10.0))
                        .addToEnd(const SizedBox(width: 10.0)),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

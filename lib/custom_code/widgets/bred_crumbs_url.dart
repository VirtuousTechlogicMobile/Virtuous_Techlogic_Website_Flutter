import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BredCrumbsUrl extends StatefulWidget {
  const BredCrumbsUrl({
    super.key,
    this.width,
    this.height,
    this.webName,
    this.pageName,
    this.title,
    this.webOnPressEvent,
    this.bredcrumbsIcon,
    this.pageOnPressEvent,
    this.webColor,
    this.pageColor,
    this.titleColor,
    this.bredcrumbColor,
  });

  final double? width;
  final double? height;
  final String? webName;
  final String? pageName;
  final String? title;
  final Future Function()? webOnPressEvent;
  final String? bredcrumbsIcon;
  final Future Function()? pageOnPressEvent;
  final Color? webColor;
  final Color? pageColor;
  final Color? titleColor;
  final Color? bredcrumbColor;

  @override
  State<BredCrumbsUrl> createState() => _BredCrumbsUrlState();
}

class _BredCrumbsUrlState extends State<BredCrumbsUrl> {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: widget.webOnPressEvent,
              child: AutoSizeText(
                widget.webName ?? 'webname',
                maxFontSize: 15,
                minFontSize: 8,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: FlutterFlowTheme.of(context).labelLarge.copyWith(
                      fontFamily: 'Raleway',
                      color: widget.webColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: AutoSizeText(
              widget.bredcrumbsIcon ?? '/',
              maxFontSize: 15,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              style: FlutterFlowTheme.of(context).headlineSmall.copyWith(
                    letterSpacing: 0,
                    color: widget.bredcrumbColor,
                    fontSize: 15,
                  ),
            ),
          ),
          Flexible(
            child: InkWell(
              onTap: widget.pageOnPressEvent,
              child: AutoSizeText(
                maxFontSize: 15,
                minFontSize: 5,
                overflow: TextOverflow.ellipsis,
                widget.pageName ?? 'pagename',
                style: FlutterFlowTheme.of(context).titleMedium.copyWith(
                      fontFamily: 'Raleway',
                      color: widget.pageColor,
                      fontSize: 15,
                    ),
              ),
            ),
          ),
          Flexible(
            child: AutoSizeText(
              widget.bredcrumbsIcon ?? '/',
              maxFontSize: 15,
              minFontSize: 8,
              overflow: TextOverflow.ellipsis,
              style: FlutterFlowTheme.of(context).headlineSmall.copyWith(
                    letterSpacing: 0,
                    color: widget.bredcrumbColor,
                    fontSize: 15,
                  ),
            ),
          ),
          Flexible(
            child: AutoSizeText(
              widget.title ?? 'title',
              maxFontSize: 15,
              minFontSize: 8,
              overflow: TextOverflow.ellipsis,
              style: FlutterFlowTheme.of(context).titleMedium.copyWith(
                    fontFamily: 'Raleway',
                    color: widget.titleColor,
                    fontSize: 15,
                  ),
            ),
          ),
        ].divide(const SizedBox(width: 8)),
      ),
    );
  }
}

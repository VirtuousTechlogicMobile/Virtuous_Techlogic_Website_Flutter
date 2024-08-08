import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'company_comp_model.dart';

export 'company_comp_model.dart';

class CompanyCompWidget extends StatefulWidget {
  const CompanyCompWidget({
    super.key,
    required this.image,
    required this.text,
    required this.rating,
  });

  final String? image;
  final String? text;
  final int? rating;

  @override
  State<CompanyCompWidget> createState() => _CompanyCompWidgetState();
}

class _CompanyCompWidgetState extends State<CompanyCompWidget> {
  late CompanyCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompanyCompModel());

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
      width: 289.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.image ??
                    "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/vhvw84cmjyb3/logo.webp",
                height: 60.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 25.0, 5.0, 25.0),
            child: SelectionArea(
                child: Text(
              widget.text ?? "Text",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: FlutterFlowTheme.of(context).text16Colo2,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
            )),
          ),
          RatingBar.builder(
            onRatingUpdate: (newValue) =>
                setState(() => _model.ratingBarValue = newValue),
            itemBuilder: (context, index) => Icon(
              Icons.star_rounded,
              color: FlutterFlowTheme.of(context).tertiary,
            ),
            direction: Axis.horizontal,
            initialRating: _model.ratingBarValue ??= widget!.rating!.toDouble(),
            unratedColor: FlutterFlowTheme.of(context).accent3,
            itemCount: 5,
            itemSize: 30.0,
            glowColor: FlutterFlowTheme.of(context).tertiary,
          ),
        ],
      ),
    );
  }
}

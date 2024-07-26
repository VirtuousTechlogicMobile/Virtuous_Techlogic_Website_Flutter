import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'floating_button_model.dart';
export 'floating_button_model.dart';

class FloatingButtonWidget extends StatefulWidget {
  const FloatingButtonWidget({super.key});

  @override
  State<FloatingButtonWidget> createState() => _FloatingButtonWidgetState();
}

class _FloatingButtonWidgetState extends State<FloatingButtonWidget> {
  late FloatingButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FloatingButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        logFirebaseEvent('FLOATING_BUTTON_FloatingActionButton_4mj');
        await launchURL('https://api.whatsapp.com/send/?phone=6354672876');
      },
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 4.0,
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: CachedNetworkImage(
            fadeInDuration: Duration(milliseconds: 400),
            fadeOutDuration: Duration(milliseconds: 400),
            imageUrl:
                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/3qvgni7qas66/whatsapp.webp',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

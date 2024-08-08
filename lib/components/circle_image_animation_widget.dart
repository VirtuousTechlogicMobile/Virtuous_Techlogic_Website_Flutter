import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'circle_image_animation_model.dart';

export 'circle_image_animation_model.dart';

class CircleImageAnimationWidget extends StatefulWidget {
  const CircleImageAnimationWidget({
    super.key,
    this.delayAnimationTime,
    this.diameterWidth,
    this.imageName,
    this.durationAnimation,
    this.finalPosition,
    this.xPosition,
    this.yPosition,
  });

  final double? delayAnimationTime;
  final double? diameterWidth;
  final String? imageName;
  final double? durationAnimation;
  final double? finalPosition;
  final double? xPosition;
  final double? yPosition;

  @override
  State<CircleImageAnimationWidget> createState() =>
      _CircleImageAnimationWidgetState();
}

class _CircleImageAnimationWidgetState extends State<CircleImageAnimationWidget>
    with TickerProviderStateMixin {
  late CircleImageAnimationModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CircleImageAnimationModel());

    animationsMap.addAll({
      'circleImageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        reverse: true,
        loop: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: valueOrDefault<double>(
              widget.delayAnimationTime,
              100.0,
            ).ms,
            duration: valueOrDefault<double>(
              widget.durationAnimation,
              100.0,
            ).ms,
            begin: const Offset(0.0, 0.0),
            end: Offset(
                0.0,
                valueOrDefault<double>(
                  widget.finalPosition,
                  10.0,
                )),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(
          valueOrDefault<double>(
            widget.xPosition,
            0.0,
          ),
          valueOrDefault<double>(
            widget.yPosition,
            0.0,
          )),
      child: Container(
        width: widget.diameterWidth,
        height: widget.diameterWidth,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: CachedNetworkImage(
          fadeInDuration: Duration(milliseconds: 0),
          fadeOutDuration: Duration(milliseconds: 0),
          imageUrl: widget.imageName ?? "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/vhvw84cmjyb3/logo.webp",
          fit: BoxFit.cover,
        ),
      ).animateOnPageLoad(animationsMap['circleImageOnPageLoadAnimation']!),
    );
  }
}

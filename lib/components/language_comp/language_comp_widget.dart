import 'package:flutter/material.dart';

import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/flutter_flow_util.dart';
import 'language_comp_model.dart';

export 'language_comp_model.dart';

class LanguageCompWidget extends StatefulWidget {
  const LanguageCompWidget({super.key});

  @override
  State<LanguageCompWidget> createState() => _LanguageCompWidgetState();
}

class _LanguageCompWidgetState extends State<LanguageCompWidget> {
  late LanguageCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageCompModel());

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
      width: double.infinity,
      height: 100.0,
      child: custom_widgets.LanguageComp(
        width: double.infinity,
        height: 100.0,
      ),
    );
  }
}

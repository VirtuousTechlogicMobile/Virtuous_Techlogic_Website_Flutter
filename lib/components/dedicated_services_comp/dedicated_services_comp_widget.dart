import 'package:flutter/material.dart';

import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/hiring_comp/hiring_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dedicated_services_comp_model.dart';

export 'dedicated_services_comp_model.dart';

class DedicatedServicesCompWidget extends StatefulWidget {
  const DedicatedServicesCompWidget({super.key});

  @override
  State<DedicatedServicesCompWidget> createState() =>
      _DedicatedServicesCompWidgetState();
}

class _DedicatedServicesCompWidgetState
    extends State<DedicatedServicesCompWidget> {
  late DedicatedServicesCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DedicatedServicesCompModel());

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
      width: MediaQuery.sizeOf(context).width * 0.9,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.commonRichTextCompModel,
              updateCallback: () => setState(() {}),
              child: const CommonRichTextCompWidget(
                richTextOne: 'Explore Our ',
                richTextTwo: 'Expertise',
                texts: 'Fields where we are Best.',
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 30.0),
              child: Wrap(
                spacing: 25.0,
                runSpacing: 25.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  wrapWithModel(
                    model: _model.hiringCompModel1,
                    updateCallback: () => setState(() {}),
                    child: const HiringCompWidget(
                      imagePath:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/8w8x2gnlyyl6/customer-service.svg',
                      jobTitle: 'Hire a full time developer',
                      expectation: 'Dedicated Flutter Expertise person',
                      expectation2: 'Effective communication',
                      expectation3: 'Best for Long-Term App Vision',
                      expectation4: 'Integrate with your Team',
                      expectation5: 'Full Project Ownership',
                      expectation6: 'Scalable Development',
                      expectation7: 'Centralized focus',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.hiringCompModel2,
                    updateCallback: () => setState(() {}),
                    child: const HiringCompWidget(
                      imagePath:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ch65ncjqbnqr/verified.svg',
                      jobTitle: 'Hire based on project idea',
                      expectation: 'Dedicated Flutter Expertise team',
                      expectation2: 'Cost-Effective Development',
                      expectation3: 'Reduced Development Time',
                      expectation4: 'Enhanced App Quality',
                      expectation5: 'Reduced Risks and Delays',
                      expectation6: 'Speed will be 2x',
                      expectation7: 'Makes work more fun',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.hiringCompModel3,
                    updateCallback: () => setState(() {}),
                    child: const HiringCompWidget(
                      imagePath:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/n1d5bme8h4y2/full-time-job.svg',
                      jobTitle: 'Hire on Hourly Basis',
                      expectation: 'Agile Development Approach',
                      expectation2: 'maintain your security',
                      expectation3: 'Cost-Effective for Small Projects',
                      expectation4: 'Flexible Project Engagement',
                      expectation5: 'Precise Project Control',
                      expectation6: 'Access to Top Talent',
                      expectation7: 'On-Demand Development Resources',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

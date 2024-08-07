import 'package:flutter/material.dart';

import '/components/customer_review_comp/customer_review_comp_widget.dart';
import '/components/customer_review_comp_mobile/customer_review_comp_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'our_customer_says_comp_widget.dart' show OurCustomerSaysCompWidget;

class OurCustomerSaysCompModel
    extends FlutterFlowModel<OurCustomerSaysCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for customerReviewCompMobile component.
  late CustomerReviewCompMobileModel customerReviewCompMobileModel1;
  // Model for customerReviewCompMobile component.
  late CustomerReviewCompMobileModel customerReviewCompMobileModel2;
  // Model for customerReviewComp component.
  late CustomerReviewCompModel customerReviewCompModel;

  @override
  void initState(BuildContext context) {
    customerReviewCompMobileModel1 =
        createModel(context, () => CustomerReviewCompMobileModel());
    customerReviewCompMobileModel2 =
        createModel(context, () => CustomerReviewCompMobileModel());
    customerReviewCompModel =
        createModel(context, () => CustomerReviewCompModel());
  }

  @override
  void dispose() {
    customerReviewCompMobileModel1.dispose();
    customerReviewCompMobileModel2.dispose();
    customerReviewCompModel.dispose();
  }
}

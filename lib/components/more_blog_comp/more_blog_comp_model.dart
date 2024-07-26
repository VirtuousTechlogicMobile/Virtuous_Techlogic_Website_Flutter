import '/backend/backend.dart';
import '/components/blog_comp/blog_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'more_blog_comp_widget.dart' show MoreBlogCompWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MoreBlogCompModel extends FlutterFlowModel<MoreBlogCompWidget> {
  ///  Local state fields for this component.

  List<BlogDetailsRecord> blogDetails = [];
  void addToBlogDetails(BlogDetailsRecord item) => blogDetails.add(item);
  void removeFromBlogDetails(BlogDetailsRecord item) =>
      blogDetails.remove(item);
  void removeAtIndexFromBlogDetails(int index) => blogDetails.removeAt(index);
  void insertAtIndexInBlogDetails(int index, BlogDetailsRecord item) =>
      blogDetails.insert(index, item);
  void updateBlogDetailsAtIndex(
          int index, Function(BlogDetailsRecord) updateFn) =>
      blogDetails[index] = updateFn(blogDetails[index]);

  BlogTagsRecord? blogtagResult;

  List<String> listOfBlogTag = [];
  void addToListOfBlogTag(String item) => listOfBlogTag.add(item);
  void removeFromListOfBlogTag(String item) => listOfBlogTag.remove(item);
  void removeAtIndexFromListOfBlogTag(int index) =>
      listOfBlogTag.removeAt(index);
  void insertAtIndexInListOfBlogTag(int index, String item) =>
      listOfBlogTag.insert(index, item);
  void updateListOfBlogTagAtIndex(int index, Function(String) updateFn) =>
      listOfBlogTag[index] = updateFn(listOfBlogTag[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in moreBlogComp widget.
  List<BlogDetailsRecord>? blogDetailsTagSelected;
  // Stores action output result for [Firestore Query - Query a collection] action in moreBlogComp widget.
  List<BlogTagsRecord>? blogtagsResult;
  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  List<String>? get choiceChipsValues1 => choiceChipsValueController1?.value;
  set choiceChipsValues1(List<String>? val) =>
      choiceChipsValueController1?.value = val;
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<BlogDetailsRecord>? selectedblogtagCopy;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<BlogDetailsRecord>? blogDetailsTresetValueCopy;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
  }
}

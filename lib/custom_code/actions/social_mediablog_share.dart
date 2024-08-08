// Automatic FlutterFlow imports
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

Future socialMediablogShare(
  String blogTitle,
  String? socialurl,
) async {
  final String encodedBlogTitle =
      Uri.encodeComponent(blogTitle).replaceAll(' ', '+');
  final String blogUrl =
      '${socialurl}https://virtuoustechlogic.com/individualBlogPage/$encodedBlogTitle';

  if (await canLaunch(blogUrl)) {
    await launch(blogUrl);
  } else {
    throw 'Could not launch $blogUrl';
  }
}

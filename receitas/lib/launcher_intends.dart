import 'package:url_launcher/url_launcher.dart';

Future<void> lauchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not lauch $url');
  }
}

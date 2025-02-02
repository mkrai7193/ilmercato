import 'package:url_launcher/url_launcher.dart';

Future<void>? _launched;

Future<void> launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

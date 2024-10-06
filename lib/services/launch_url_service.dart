// url_launcher_service.dart

import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  static Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void launchURL(String url) {
    _launchURL(url);
  }
}

import 'package:url_launcher/url_launcher.dart';

class Urls {
  Urls._();

  static const _termsOfService = 'https://';
  static const _privacyPolicy = 'https://';
  static const _buyPro = 'https://';

  static void showTermsOfService() => _show(_termsOfService);

  static void showPrivacyPolicy() => _show(_privacyPolicy);

  static void showBuyPro() => _show(_buyPro);

  static void _show(String url) {
    launchUrl(Uri.parse(url));
  }
}
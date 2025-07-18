import 'package:bookly_app/core/utils/function/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String? url) async {
  if (url != null) {
final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
  customSnackBar(context, "Can not launch$url");
  }
  }
}



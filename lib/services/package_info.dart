import 'package:easy_track/core/global_vars.dart';
import 'package:package_info_plus/package_info_plus.dart';

getAppFutureInfo() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  globalAppName = packageInfo.appName;
  globalAppVersion = packageInfo.version;
}

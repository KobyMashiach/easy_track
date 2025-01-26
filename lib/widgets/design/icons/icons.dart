import 'package:flutter/material.dart';

enum SocialIcons { google, facebook }

extension SocialIconsX on SocialIcons {
  static const assetsPath = 'assets/icons/';
  String get iconPath {
    switch (this) {
      case SocialIcons.google:
        return '${assetsPath}google_icon.png';
      case SocialIcons.facebook:
        return 'assets/facebook_icon.png';
    }
  }
}

CircleAvatar googleIcon(
    {SocialIcons icon = SocialIcons.google, double size = 30}) {
  return CircleAvatar(
    radius: size - 10,
    backgroundColor: Colors.white,
    child: ClipOval(
      child: Image.asset(
        icon.iconPath,
        fit: BoxFit.cover,
        height: size,
        width: size,
      ),
    ),
  );
}

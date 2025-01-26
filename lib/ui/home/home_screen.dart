import 'package:easy_track/widgets/general/appbar.dart';
import 'package:easy_track/widgets/general/side_menu_v2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(title: "Home Screen"),
      drawer: appSideMenuV2(context, 'home'),
    );
  }
}

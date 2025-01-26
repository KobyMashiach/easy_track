import 'package:easy_track/core/hive/adapters_controller.dart';
import 'package:easy_track/firebase_options.dart';
import 'package:easy_track/services/package_info.dart';
import 'package:easy_track/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await getAppFutureInfo();
  if (kIsWeb) {
    await Hive.initFlutter();
  } else {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDirectory.path);
  }
  AdaptersController.registerAdapters();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationContextService.navigatorKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
        fontFamily:
            GoogleFonts.amaticSc(fontWeight: FontWeight.bold).fontFamily,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.amaticSc(
            textStyle: const TextStyle(fontSize: 28),
          ),
          bodyMedium: GoogleFonts.amaticSc(
            textStyle: const TextStyle(fontSize: 24),
          ),
          bodySmall: GoogleFonts.amaticSc(
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      home: const HomeScreen(),
    );
  }
}

class NavigationContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

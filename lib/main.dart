import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inviduxmobileapp/app/provider/auth_state.dart';
import 'package:inviduxmobileapp/core/constants/constants.dart';

import 'core/services/app_preferences.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.init();
  // determinePosition();
  // isLoggedIn = true;
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invidux App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: AuthState.id,
      routes: screenRoutes,
    );
  }
}

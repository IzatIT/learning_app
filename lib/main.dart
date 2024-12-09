import 'package:learning_app/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    runApp(const MainApp());
  } catch (e) {
    print('Firebase initialization error: $e');
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF23232C),
        scaffoldBackgroundColor: const Color(0xFF231921),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF33343D),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF7868D8),
          onPrimary: Colors.white,
          secondary: Color(0xFF8AC186),
          onSecondary: Colors.white,
          error: Color(0xFFFFABC7),
          onError: Colors.white,
          surface: Color(0xFF23232C),
          onSurface: Colors.white,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF7868D8),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      routes: {
        "/": (context) => const AuthPage(),
        "/notification": (context) => const NotificationPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wsb_chat/screens/welcome_screen.dart';
import 'package:wsb_chat/screens/login_screen.dart';
import 'package:wsb_chat/screens/registration_screen.dart';
import 'package:wsb_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:const FirebaseOptions(
          apiKey: 'AIzaSyDfOtRTZJslGDZ8qcXcscQ911LWH29mw4A',
          appId: '1:318514554552:web:925f080cb8372c84d6364d',
          messagingSenderId:'318514554552',
          projectId: 'wsb-chat-7cba6'));
  runApp(const WsbChat());
}

class WsbChat extends StatelessWidget {
  const WsbChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}

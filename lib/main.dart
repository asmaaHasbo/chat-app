import 'package:chat_app/features/auth/presentation/views/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/themes/colors.dart';
import 'features/auth/presentation/views/login_screen.dart';
import 'features/splash_screen/views/splash_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(
      options:  const FirebaseOptions(
        apiKey: "AIzaSyBp5QBzcK22nyOGistSbRreRf8O06VodvM",
        authDomain: "first-firebase-project-332a9.firebaseapp.com",
        projectId: "first-firebase-project-332a9",
        storageBucket: "first-firebase-project-332a9.appspot.com",
        messagingSenderId: "397774639805",
        appId: "1:397774639805:web:c716b0f734f4e2815e5dd4"
    )
    );
  }

  else{
    Firebase.initializeApp();
  }

  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
      ),
      routes:  {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id : (context) => const RegisterScreen()
      },
      initialRoute: SplashScreen.id,
    );
  }
}

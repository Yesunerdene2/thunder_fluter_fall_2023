import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson_day_31_flutter/firebase_options.dart';
import 'package:lesson_day_31_flutter/screens/home_screen.dart';
import 'package:lesson_day_31_flutter/screens/login_screen.dart';
import 'package:lesson_day_31_flutter/utils/auth_methods.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    home: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return Scaffold(
              body: Center(
                child: Column(
                  children: [
                    Text('error ${snapshot.error}'),
                    ElevatedButton(onPressed: (){
                      AuthMethods().signOut();
                    }, child: Text('Sign out'))
                  ],
                ),
              ),
            );
          }
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          );
        }
        return const LoginScreeen();
      },
    ),
  ));
}

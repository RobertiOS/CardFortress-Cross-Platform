import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import './firebase_options.dart';


Future<void> configureDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
}
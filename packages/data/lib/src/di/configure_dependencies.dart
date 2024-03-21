import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import '../../firebase_options.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:data/data.dart';


Future<void> configureDependencies({required GetIt sl}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  sl.registerLazySingleton<AuthtenticationRepositoryInterface>(
      () => FirebaseAuthRepository());
  
  sl.registerLazySingleton<CreditCardRepositoryInterface>(
      () => CreditCardDefaultRepository());
}

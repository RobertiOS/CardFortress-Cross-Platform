import 'package:domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class FirebaseAuthRepository implements AuthtenticationRepositoryInterface {

final firebaseClient = FirebaseAuth.instance;

  @override
  Future<void> signIn({required String account, required String password}) async {
    try {
      await firebaseClient.signInWithEmailAndPassword(
          email: account, password: password);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw Exception('Sign in: user not found');
        case 'wrong-password':
          throw Exception('Sign in: Wrong password');
        default:
          throw Exception('Sign in: Unknown error');
      }
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseClient.signOut();
    } on Exception {
      throw Exception('Sign Out: Unknown error');
    }
  }
  
  @override
  Stream<bool> get isUserSignedIn {
    return firebaseClient
    .authStateChanges()
    .map((user) => user != null);
  }
  
  @override
  Future<void> signUp(
      {required String account,
      required String password,
      required String name,
      required String lastName}) async {
    try {
      await firebaseClient.createUserWithEmailAndPassword(
          email: account, password: password);
    } on Exception {
      throw Exception('Sign up: Unknown error');
    }
  }
}
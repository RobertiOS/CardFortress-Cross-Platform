abstract class AuthtenticationRepositoryInterface {
  Future<void> signIn({required String account, required String password}) async {}
  Future<void> signOut() async {}
  Stream<bool> get isUserSignedIn;
}
abstract class AuthtenticationRepositoryInterface {
  Future<void> signIn({required String account, required String password}) async {}
  Future<void> signUp({required String account, required String password, required String name, required String lastName }) async {}
  Future<void> signOut() async {}
  Stream<bool> get isUserSignedIn;
}
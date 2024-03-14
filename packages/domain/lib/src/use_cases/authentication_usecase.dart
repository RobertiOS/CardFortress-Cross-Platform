import '../interfaces/authentication_repository.dart';

final class SignInUseCase {
  SignInUseCase({required this.repository});

  final AuthtenticationRepositoryInterface repository;

  Stream<bool> get isUserSignedIn {
    return repository.isUserSignedIn;
  }

  Future<void> signIn({required String account, required String password}) {
    return repository.signIn(account: account, password: password);
  }
}

final class SignUpUseCase {
  SignUpUseCase({required this.repository});

  final AuthtenticationRepositoryInterface repository;

  Future<void> signUp(
      {required String account,
      required String password,
      required String name,
      required String lastName}) {
    return repository.signUp(
        account: account, password: password, name: name, lastName: lastName);
  }
}

final class SignOutUseCase {
  SignOutUseCase({required this.repository});

  final AuthtenticationRepositoryInterface repository;

  Future<void> signOut() {
    return repository.signOut();
  }
}

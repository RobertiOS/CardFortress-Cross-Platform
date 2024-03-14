import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/use_cases/authentication_usecase.dart';

Future<void> configureDependencies({required GetIt sl}) async {

  sl.registerLazySingleton(() => SignInUseCase(repository: sl.get<AuthtenticationRepositoryInterface>()));
  sl.registerLazySingleton(() => SignOutUseCase(repository: sl.get<AuthtenticationRepositoryInterface>()));
  sl.registerLazySingleton(() => SignUpUseCase(repository: sl.get<AuthtenticationRepositoryInterface>()));
}
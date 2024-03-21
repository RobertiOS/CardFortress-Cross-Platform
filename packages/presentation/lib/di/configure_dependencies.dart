import 'package:flutter/widgets.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:presentation/src/features/creditcard_list/bloc/creditcard_list_bloc.dart';

Future<void> configureDependencies({required GetIt sl}) async {
  WidgetsFlutterBinding.ensureInitialized();
  sl.registerLazySingleton<CreditcardListBloc>(() => CreditcardListBloc(sl.get<GetCreditCardListUseCase>()));
}

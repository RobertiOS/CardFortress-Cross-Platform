import 'dart:async';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
part 'creditcard_list_event.dart';
part 'creditcard_list_state.dart';

class CreditcardListBloc extends Bloc<CreditcardListEvent, CreditcardListState> {

  final GetCreditCardListUseCase useCase;

  CreditcardListBloc(this.useCase) : super(CreditcardLoadingState()) {
    on<LoadCreditCards>(mapLoadCreditCardToState);
  }

  FutureOr<void> mapLoadCreditCardToState(CreditcardListEvent event, Emitter emit) async {
    emit(CreditcardLoadingState());

    final creditCards = await useCase();
    await Future.delayed(Duration(seconds: 1));
    emit(CreditcardLoadedState(creditCards: creditCards));
  }
}

part of 'creditcard_list_bloc.dart';

@immutable
sealed class CreditcardListState {}

final class CreditcardLoadingState extends CreditcardListState {}

final class CreditcardLoadedState extends CreditcardListState {
  final List<CreditCard> creditCards;

  CreditcardLoadedState({required this.creditCards});

}

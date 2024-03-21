part of 'creditcard_list_bloc.dart';

@immutable
sealed class CreditcardListEvent {}

final class LoadCreditCards extends CreditcardListEvent {}

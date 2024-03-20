import 'dart:async';
import '../entities/creditcard.dart';

abstract class CreditCardRepository {
  Future<void> removeCreditCard(String identifier);
  Future<void> removeAllCreditCards();
  Future<void> addCreditCard(CreditCard creditCard);
  Future<CreditCard> getCreditCard(String identifier);
  Future<List<CreditCard>> getAllCreditCards();
  Future<CreditCard?> getFavoriteCreditCard();
}
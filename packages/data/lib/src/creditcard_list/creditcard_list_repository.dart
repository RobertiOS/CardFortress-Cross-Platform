import 'package:domain/domain.dart';

import 'dart:async';

class CreditCardDefaultRepository implements CreditCardRepository {
  @override
  Future<void> removeCreditCard(String identifier) async {
  }

  @override
  Future<void> removeAllCreditCards() async {
  }

  @override
  Future<void> addCreditCard(CreditCard creditCard) async {

  }

  @override
  Future<CreditCard> getCreditCard(String identifier) async {
    return CreditCard(
      identifier: "1234",
      number: "",
      cvv: 1,
      date: "",
      cardName: "",
      cardHolderName: "",
      notes: "",
      isFavorite: true,
    );
  }

  @override
  Future<List<CreditCard>> getAllCreditCards() async {
    return [
      CreditCard(
        identifier: "1234",
        number: "",
        cvv: 1,
        date: "",
        cardName: "",
        cardHolderName: "",
        notes: "",
        isFavorite: true,
      )
    ];
  }

  @override
  Future<CreditCard?> getFavoriteCreditCard() async {
    return CreditCard(
      identifier: "1234",
      number: "",
      cvv: 1,
      date: "",
      cardName: "",
      cardHolderName: "",
      notes: "",
      isFavorite: true,
    );
  }
}
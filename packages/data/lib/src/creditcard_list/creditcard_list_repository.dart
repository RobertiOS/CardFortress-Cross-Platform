import 'package:domain/domain.dart';

import 'dart:async';

class CreditCardDefaultRepository implements CreditCardRepositoryInterface {
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
      number: "1234 5678 9123 4567",
      cvv: 123,
      date: "11/26",
      cardName: "Bac",
      cardHolderName: "Roberto",
      notes: "",
      isFavorite: true,
    );
  }

  @override
  Future<List<CreditCard>> getAllCreditCards() async {
    return [
      CreditCard(
      identifier: "1234",
      number: "12345678912345678",
      cvv: 123,
      date: "11/26",
      cardName: "Bac",
      cardHolderName: "Roberto",
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
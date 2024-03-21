import 'package:data/src/dtos/creditcard.dart';
import 'package:domain/domain.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

class CreditCardDefaultRepository implements CreditCardRepositoryInterface {

  final db = FirebaseFirestore.instance;

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
  Future<List<CreditCard>> getAllCreditCards({required String userID}) async {

    final userRef = db.collection(Collections.user).doc(userID);
    final creditCardRef = userRef.collection(Collections.creditCard);

    final creditCardDTOs = await creditCardRef.get();
    final dtos = creditCardDTOs.docs.map((snapshot) {
      return CreditCardDTO.fromFirestore(snapshot).toDomain();
    },);

    return dtos.toList();
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

class Collections {
  static const user = 'userInformation';
  static const creditCard = 'creditCards';
}
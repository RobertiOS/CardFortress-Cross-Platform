import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/domain.dart' as domain show CreditCard;

class CreditCardDTO {
  final String identifier;
  final String number;
  final int cvv;
  final String date;
  final String cardName;
  final String cardHolderName;
  final String notes;
  final bool isFavorite;

  CreditCardDTO({
    required this.identifier,
    required this.number,
    required this.cvv,
    required this.date,
    required this.cardName,
    required this.cardHolderName,
    required this.notes,
    required this.isFavorite,
  });

  factory CreditCardDTO.fromFirestore(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

    return CreditCardDTO(
      identifier: snapshot.id,
      number: data['number'] ?? '',
      cvv: data['cvv'] ?? 0,
      date: data['date'] ?? '',
      cardName: data['cardName'] ?? '',
      cardHolderName: data['cardHolderName'] ?? '',
      notes: data['notes'] ?? '',
      isFavorite: data['isFavorite'] ?? false,
    );
  }

  domain.CreditCard toDomain() {
    return domain.CreditCard(
        identifier: identifier,
        number: number,
        cvv: cvv,
        date: date,
        cardName: cardName,
        cardHolderName: cardHolderName,
        notes: notes,
        isFavorite: isFavorite);
  }
}

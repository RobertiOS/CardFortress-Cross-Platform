class CreditCard {
  final String identifier;
  final String number;
  final int cvv;
  final String date;
  final String cardName;
  final String cardHolderName;
  final String notes;
  final bool isFavorite;

  CreditCard({
    required this.identifier,
    required this.number,
    required this.cvv,
    required this.date,
    required this.cardName,
    required this.cardHolderName,
    required this.notes,
    required this.isFavorite,
  });
}
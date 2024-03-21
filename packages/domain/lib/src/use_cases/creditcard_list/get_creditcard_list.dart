import 'package:domain/domain.dart';

final class GetCreditCardListUseCase {
  final CreditCardRepositoryInterface repository;

  GetCreditCardListUseCase({required this.repository});

  Future<List<CreditCard>> call() {
    return repository.getAllCreditCards();
  }

}
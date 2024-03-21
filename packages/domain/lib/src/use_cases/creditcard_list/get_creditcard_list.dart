import 'package:domain/domain.dart';

final class GetCreditCardListUseCase {
  final CreditCardRepositoryInterface repository;
  final AuthtenticationRepositoryInterface authRepository;

  GetCreditCardListUseCase({required this.repository, required this.authRepository});

  Future<List<CreditCard>> call() {
    final userId = authRepository.userId;
    if (userId == null) { throw Exception('User identifier must exist in order to get credit cards'); }
    return repository.getAllCreditCards(userID: userId);
  }

}
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:presentation/src/features/creditcard_list/bloc/creditcard_list_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardList extends StatelessWidget {
  final GetIt serviceLocator;
  const CreditCardList({super.key, required this.serviceLocator});

  static const routeName = 'creditCardList';

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(value: serviceLocator.get<CreditcardListBloc>(),
      child: BlocBuilder<CreditcardListBloc, CreditcardListState>(
        builder: (context, state) {
          context.read<CreditcardListBloc>().add(LoadCreditCards());
          switch (state) {
            case CreditcardLoadingState():
              return const Text("loading");

            case CreditcardLoadedState(creditCards: final creditCards):

              return ListView.builder(
                itemCount: creditCards.length,
                itemBuilder: (context, index) {
                  final creditcard = creditCards[index];
                  return CreditCardWidget(
                    cardNumber: creditcard.number,
                    expiryDate: creditcard.date,
                    cardHolderName: creditcard.cardHolderName,
                    cvvCode: creditcard.cvv.toString(),
                    showBackView: false,
                    onCreditCardWidgetChange: (p0) {},
                    obscureCardNumber: false,
                  );
                },
              );
          }
        },
      ),
    );
  }
}

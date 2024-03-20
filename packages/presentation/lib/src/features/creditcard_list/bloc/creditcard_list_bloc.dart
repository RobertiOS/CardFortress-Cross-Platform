import 'package:core/core.dart';

part 'creditcard_list_event.dart';
part 'creditcard_list_state.dart';

class CreditcardListBloc extends Bloc<CreditcardListEvent, CreditcardListState> {
  CreditcardListBloc() : super(CreditcardListInitial()) {
    on<CreditcardListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

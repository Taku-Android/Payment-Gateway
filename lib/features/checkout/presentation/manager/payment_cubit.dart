import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/features/checkout/data/model/payment_intent/payment_intent_input_model.dart';
import 'package:payment_gateway/features/checkout/data/repo/checkout_repository.dart';
import 'package:payment_gateway/features/checkout/presentation/manager/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkOutRepository) : super(PaymentInitial());

  final CheckOutRepository checkOutRepository;

  Future makePayment(PaymentIntentInputModel paymentIntentInputModel) async {
    emit(PaymentLoading());
    var response = await checkOutRepository.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    response.fold(
      (failure) => emit(PaymentFailure(errMessage: failure.errMessage)),
      (success) => emit(PaymentSuccess()),
    );
  }
}

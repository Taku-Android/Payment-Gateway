import 'package:dartz/dartz.dart';
import 'package:payment_gateway/core/errors/failure.dart';
import 'package:payment_gateway/features/checkout/data/model/payment_intent/payment_intent_input_model.dart';

abstract class CheckOutRepository{


  Future<Either<Failure , void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel});

}


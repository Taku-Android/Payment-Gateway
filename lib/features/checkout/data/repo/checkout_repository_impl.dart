import 'package:dartz/dartz.dart';
import 'package:payment_gateway/core/errors/failure.dart';
import 'package:payment_gateway/core/utils/stripe_service.dart';
import 'package:payment_gateway/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:payment_gateway/features/checkout/data/repo/checkout_repository.dart';

class CheckOutRepositoryImpl extends CheckOutRepository{

  final StripeService stripeService = StripeService() ;



  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
    try{

      await stripeService.makePayment(paymentIntentInputModel: paymentIntentInputModel);

      return const Right(null);

    }catch(e){
      return left(ServerError(errMessage: e.toString()));
    }

  }

}
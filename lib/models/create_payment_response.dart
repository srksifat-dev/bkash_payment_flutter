// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreatePaymentResponse {
  final String paymentID;
  final String paymentCreateTime;
  final String transactionStatus;
  final String amount;
  final String currency;
  final String intent;
  final String merchantInvoiceNumber;
  final String bkashURL;
  final String callbackURL;
  final String successCallbackURL;
  final String failureCallbackURL;
  final String cancelledCallbackURL;
  final String statusCode;
  final String statusMessage;
  CreatePaymentResponse({
    required this.paymentID,
    required this.paymentCreateTime,
    required this.transactionStatus,
    required this.amount,
    required this.currency,
    required this.intent,
    required this.merchantInvoiceNumber,
    required this.bkashURL,
    required this.callbackURL,
    required this.successCallbackURL,
    required this.failureCallbackURL,
    required this.cancelledCallbackURL,
    required this.statusCode,
    required this.statusMessage,
  });

  CreatePaymentResponse copyWith({
    String? paymentID,
    String? paymentCreateTime,
    String? transactionStatus,
    String? amount,
    String? currency,
    String? intent,
    String? merchantInvoiceNumber,
    String? bkashURL,
    String? callbackURL,
    String? successCallbackURL,
    String? failureCallbackURL,
    String? cancelledCallbackURL,
    String? statusCode,
    String? statusMessage,
  }) {
    return CreatePaymentResponse(
      paymentID: paymentID ?? this.paymentID,
      paymentCreateTime: paymentCreateTime ?? this.paymentCreateTime,
      transactionStatus: transactionStatus ?? this.transactionStatus,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      intent: intent ?? this.intent,
      merchantInvoiceNumber:
          merchantInvoiceNumber ?? this.merchantInvoiceNumber,
      bkashURL: bkashURL ?? this.bkashURL,
      callbackURL: callbackURL ?? this.callbackURL,
      successCallbackURL: successCallbackURL ?? this.successCallbackURL,
      failureCallbackURL: failureCallbackURL ?? this.failureCallbackURL,
      cancelledCallbackURL: cancelledCallbackURL ?? this.cancelledCallbackURL,
      statusCode: statusCode ?? this.statusCode,
      statusMessage: statusMessage ?? this.statusMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentID': paymentID,
      'paymentCreateTime': paymentCreateTime,
      'transactionStatus': transactionStatus,
      'amount': amount,
      'currency': currency,
      'intent': intent,
      'merchantInvoiceNumber': merchantInvoiceNumber,
      'bkashURL': bkashURL,
      'callbackURL': callbackURL,
      'successCallbackURL': successCallbackURL,
      'failureCallbackURL': failureCallbackURL,
      'cancelledCallbackURL': cancelledCallbackURL,
      'statusCode': statusCode,
      'statusMessage': statusMessage,
    };
  }

  factory CreatePaymentResponse.fromMap(Map<String, dynamic> map) {
    return CreatePaymentResponse(
      paymentID: map['paymentID'] as String,
      paymentCreateTime: map['paymentCreateTime'] as String,
      transactionStatus: map['transactionStatus'] as String,
      amount: map['amount'] as String,
      currency: map['currency'] as String,
      intent: map['intent'] as String,
      merchantInvoiceNumber: map['merchantInvoiceNumber'] as String,
      bkashURL: map['bkashURL'] as String,
      callbackURL: map['callbackURL'] as String,
      successCallbackURL: map['successCallbackURL'] as String,
      failureCallbackURL: map['failureCallbackURL'] as String,
      cancelledCallbackURL: map['cancelledCallbackURL'] as String,
      statusCode: map['statusCode'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreatePaymentResponse.fromJson(String source) =>
      CreatePaymentResponse.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CreatePaymentSuccess(paymentID: $paymentID, paymentCreateTime: $paymentCreateTime, transactionStatus: $transactionStatus, amount: $amount, currency: $currency, intent: $intent, merchantInvoiceNumber: $merchantInvoiceNumber, bkashURL: $bkashURL, callbackURL: $callbackURL, successCallbackURL: $successCallbackURL, failureCallbackURL: $failureCallbackURL, cancelledCallbackURL: $cancelledCallbackURL, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(covariant CreatePaymentResponse other) {
    if (identical(this, other)) return true;

    return other.paymentID == paymentID &&
        other.paymentCreateTime == paymentCreateTime &&
        other.transactionStatus == transactionStatus &&
        other.amount == amount &&
        other.currency == currency &&
        other.intent == intent &&
        other.merchantInvoiceNumber == merchantInvoiceNumber &&
        other.bkashURL == bkashURL &&
        other.callbackURL == callbackURL &&
        other.successCallbackURL == successCallbackURL &&
        other.failureCallbackURL == failureCallbackURL &&
        other.cancelledCallbackURL == cancelledCallbackURL &&
        other.statusCode == statusCode &&
        other.statusMessage == statusMessage;
  }

  @override
  int get hashCode {
    return paymentID.hashCode ^
        paymentCreateTime.hashCode ^
        transactionStatus.hashCode ^
        amount.hashCode ^
        currency.hashCode ^
        intent.hashCode ^
        merchantInvoiceNumber.hashCode ^
        bkashURL.hashCode ^
        callbackURL.hashCode ^
        successCallbackURL.hashCode ^
        failureCallbackURL.hashCode ^
        cancelledCallbackURL.hashCode ^
        statusCode.hashCode ^
        statusMessage.hashCode;
  }
}

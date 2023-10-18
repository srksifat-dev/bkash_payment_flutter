// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ExecutePaymentResponse {
  final String paymentID;
  final String customerMsisdn;
  final String payerReference;
  final String paymentExecuteTime;
  final String trxID;
  final String transactionStatus;
  final String amount;
  final String currency;
  final String intent;
  final String merchantInvoiceNumber;
  final String statusCode;
  final String statusMessage;
  ExecutePaymentResponse({
    required this.paymentID,
    required this.customerMsisdn,
    required this.payerReference,
    required this.paymentExecuteTime,
    required this.trxID,
    required this.transactionStatus,
    required this.amount,
    required this.currency,
    required this.intent,
    required this.merchantInvoiceNumber,
    required this.statusCode,
    required this.statusMessage,
  });

  ExecutePaymentResponse copyWith({
    String? paymentID,
    String? customerMsisdn,
    String? payerReference,
    String? paymentExecuteTime,
    String? trxID,
    String? transactionStatus,
    String? amount,
    String? currency,
    String? intent,
    String? merchantInvoiceNumber,
    String? statusCode,
    String? statusMessage,
  }) {
    return ExecutePaymentResponse(
      paymentID: paymentID ?? this.paymentID,
      customerMsisdn: customerMsisdn ?? this.customerMsisdn,
      payerReference: payerReference ?? this.payerReference,
      paymentExecuteTime: paymentExecuteTime ?? this.paymentExecuteTime,
      trxID: trxID ?? this.trxID,
      transactionStatus: transactionStatus ?? this.transactionStatus,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      intent: intent ?? this.intent,
      merchantInvoiceNumber: merchantInvoiceNumber ?? this.merchantInvoiceNumber,
      statusCode: statusCode ?? this.statusCode,
      statusMessage: statusMessage ?? this.statusMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentID': paymentID,
      'customerMsisdn': customerMsisdn,
      'payerReference': payerReference,
      'paymentExecuteTime': paymentExecuteTime,
      'trxID': trxID,
      'transactionStatus': transactionStatus,
      'amount': amount,
      'currency': currency,
      'intent': intent,
      'merchantInvoiceNumber': merchantInvoiceNumber,
      'statusCode': statusCode,
      'statusMessage': statusMessage,
    };
  }

  factory ExecutePaymentResponse.fromMap(Map<String, dynamic> map) {
    return ExecutePaymentResponse(
      paymentID: map['paymentID'] as String,
      customerMsisdn: map['customerMsisdn'] as String,
      payerReference: map['payerReference'] as String,
      paymentExecuteTime: map['paymentExecuteTime'] as String,
      trxID: map['trxID'] as String,
      transactionStatus: map['transactionStatus'] as String,
      amount: map['amount'] as String,
      currency: map['currency'] as String,
      intent: map['intent'] as String,
      merchantInvoiceNumber: map['merchantInvoiceNumber'] as String,
      statusCode: map['statusCode'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExecutePaymentResponse.fromJson(String source) => ExecutePaymentResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExecutePaymentResponse(paymentID: $paymentID, customerMsisdn: $customerMsisdn, payerReference: $payerReference, paymentExecuteTime: $paymentExecuteTime, trxID: $trxID, transactionStatus: $transactionStatus, amount: $amount, currency: $currency, intent: $intent, merchantInvoiceNumber: $merchantInvoiceNumber, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(covariant ExecutePaymentResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.paymentID == paymentID &&
      other.customerMsisdn == customerMsisdn &&
      other.payerReference == payerReference &&
      other.paymentExecuteTime == paymentExecuteTime &&
      other.trxID == trxID &&
      other.transactionStatus == transactionStatus &&
      other.amount == amount &&
      other.currency == currency &&
      other.intent == intent &&
      other.merchantInvoiceNumber == merchantInvoiceNumber &&
      other.statusCode == statusCode &&
      other.statusMessage == statusMessage;
  }

  @override
  int get hashCode {
    return paymentID.hashCode ^
      customerMsisdn.hashCode ^
      payerReference.hashCode ^
      paymentExecuteTime.hashCode ^
      trxID.hashCode ^
      transactionStatus.hashCode ^
      amount.hashCode ^
      currency.hashCode ^
      intent.hashCode ^
      merchantInvoiceNumber.hashCode ^
      statusCode.hashCode ^
      statusMessage.hashCode;
  }
}
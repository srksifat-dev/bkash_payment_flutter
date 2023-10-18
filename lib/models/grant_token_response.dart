// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class GrantTokenResponse {
  final String statusCode;
  final String statusMessage;
  final String idToken;
  final String tokenType;
  final int expiresIn;
  final String refreshToken;
  GrantTokenResponse({
    required this.statusCode,
    required this.statusMessage,
    required this.idToken,
    required this.tokenType,
    required this.expiresIn,
    required this.refreshToken,
  });

  GrantTokenResponse copyWith({
    String? statusCode,
    String? statusMessage,
    String? idToken,
    String? tokenType,
    int? expiresIn,
    String? refreshToken,
  }) {
    return GrantTokenResponse(
      statusCode: statusCode ?? this.statusCode,
      statusMessage: statusMessage ?? this.statusMessage,
      idToken: idToken ?? this.idToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'statusMessage': statusMessage,
      'id_token': idToken,
      'token_type': tokenType,
      'expires_in': expiresIn,
      'refresh_token': refreshToken,
    };
  }

  factory GrantTokenResponse.fromMap(Map<String, dynamic> map) {
    return GrantTokenResponse(
      statusCode: map['statusCode'] as String,
      statusMessage: map['statusMessage'] as String,
      idToken: map['id_token'] as String,
      tokenType: map['token_type'] as String,
      expiresIn: map['expires_in'] as int,
      refreshToken: map['refresh_token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GrantTokenResponse.fromJson(String source) =>
      GrantTokenResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BkashTokenModel(statusCode: $statusCode, statusMessage: $statusMessage, idToken: $idToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(covariant GrantTokenResponse other) {
    if (identical(this, other)) return true;

    return other.statusCode == statusCode &&
        other.statusMessage == statusMessage &&
        other.idToken == idToken &&
        other.tokenType == tokenType &&
        other.expiresIn == expiresIn &&
        other.refreshToken == refreshToken;
  }

  @override
  int get hashCode {
    return statusCode.hashCode ^
        statusMessage.hashCode ^
        idToken.hashCode ^
        tokenType.hashCode ^
        expiresIn.hashCode ^
        refreshToken.hashCode;
  }
}

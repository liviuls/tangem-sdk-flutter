// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardResponse _$CardResponseFromJson(Map<String, dynamic> json) {
  return CardResponse(
    cardData: json['cardData'] == null
        ? null
        : CardDataResponse.fromJson(json['cardData'] as Map<String, dynamic>),
    cardId: json['cardId'] as String,
    cardPublicKey: json['cardPublicKey'] as String,
    curve: json['curve'] as String,
    firmwareVersion: json['firmwareVersion'] == null
        ? null
        : FirmwareVersion.fromJson(
            json['firmwareVersion'] as Map<String, dynamic>),
    health: json['health'] as int,
    isActivated: json['isActivated'] as bool,
    issuerPublicKey: json['issuerPublicKey'] as String,
    manufacturerName: json['manufacturerName'] as String,
    maxSignatures: json['maxSignatures'] as int,
    pauseBeforePin2: json['pauseBeforePin2'] as int,
    settingsMask:
        (json['settingsMask'] as List)?.map((e) => e as String)?.toList(),
    signingMethods:
        (json['signingMethods'] as List)?.map((e) => e as String)?.toList(),
    status: json['status'] as String,
    terminalIsLinked: json['terminalIsLinked'] as bool,
    wallets: (json['wallets'] as List)
        ?.map((e) =>
            e == null ? null : Wallet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CardResponseToJson(CardResponse instance) =>
    <String, dynamic>{
      'cardData': instance.cardData,
      'cardId': instance.cardId,
      'cardPublicKey': instance.cardPublicKey,
      'curve': instance.curve,
      'firmwareVersion': instance.firmwareVersion,
      'health': instance.health,
      'isActivated': instance.isActivated,
      'issuerPublicKey': instance.issuerPublicKey,
      'manufacturerName': instance.manufacturerName,
      'maxSignatures': instance.maxSignatures,
      'pauseBeforePin2': instance.pauseBeforePin2,
      'settingsMask': instance.settingsMask,
      'signingMethods': instance.signingMethods,
      'status': instance.status,
      'terminalIsLinked': instance.terminalIsLinked,
      'wallets': instance.wallets,
    };

FirmwareVersion _$FirmwareVersionFromJson(Map<String, dynamic> json) {
  return FirmwareVersion(
    json['hotFix'] as int,
    json['major'] as int,
    json['minor'] as int,
    json['type'] as String,
    json['version'] as String,
  );
}

Map<String, dynamic> _$FirmwareVersionToJson(FirmwareVersion instance) =>
    <String, dynamic>{
      'hotFix': instance.hotFix,
      'major': instance.major,
      'minor': instance.minor,
      'type': instance.type,
      'version': instance.version,
    };

CardDataResponse _$CardDataResponseFromJson(Map<String, dynamic> json) {
  return CardDataResponse(
    batchId: json['batchId'] as String,
    blockchainName: json['blockchainName'] as String,
    issuerName: json['issuerName'] as String,
    manufacturerSignature: json['manufacturerSignature'] as String,
    manufactureDateTime: json['manufactureDateTime'] as String,
    productMask:
        (json['productMask'] as List)?.map((e) => e as String)?.toList(),
    tokenContractAddress: json['tokenContractAddress'] as String,
    tokenSymbol: json['tokenSymbol'] as String,
    tokenDecimal: json['tokenDecimal'] as int,
  );
}

Map<String, dynamic> _$CardDataResponseToJson(CardDataResponse instance) {
  final val = <String, dynamic>{
    'batchId': instance.batchId,
    'blockchainName': instance.blockchainName,
    'issuerName': instance.issuerName,
    'manufacturerSignature': instance.manufacturerSignature,
    'manufactureDateTime': instance.manufactureDateTime,
    'productMask': instance.productMask,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tokenContractAddress', instance.tokenContractAddress);
  writeNotNull('tokenSymbol', instance.tokenSymbol);
  writeNotNull('tokenDecimal', instance.tokenDecimal);
  return val;
}

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return Wallet(
    json['index'] as int,
    _$enumDecodeNullable(_$WalletStatusEnumMap, json['status']),
    json['publicKey'] as String,
  );
}

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
      'index': instance.index,
      'status': _$WalletStatusEnumMap[instance.status],
      'publicKey': instance.publicKey,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$WalletStatusEnumMap = {
  WalletStatus.loaded: 'Loaded',
  WalletStatus.empty: 'Empty',
};

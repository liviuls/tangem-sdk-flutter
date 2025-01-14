import 'package:json_annotation/json_annotation.dart';

part 'card_response.g.dart';

@JsonSerializable()
class CardResponse {
  CardDataResponse cardData;
  String cardId;
  String cardPublicKey;
  String curve;
  FirmwareVersion firmwareVersion;
  int health;
  bool isActivated;
  String issuerPublicKey;
  String manufacturerName;
  int maxSignatures;
  int pauseBeforePin2;
  List<String> settingsMask;
  List<String> signingMethods;
  String status;
  bool terminalIsLinked;
  List<Wallet> wallets;

  CardResponse(
      {this.cardData,
      this.cardId,
      this.cardPublicKey,
      this.curve,
      this.firmwareVersion,
      this.health,
      this.isActivated,
      this.issuerPublicKey,
      this.manufacturerName,
      this.maxSignatures,
      this.pauseBeforePin2,
      this.settingsMask,
      this.signingMethods,
      this.status,
      this.terminalIsLinked,
      this.wallets});

  factory CardResponse.fromJson(Map<String, dynamic> json) => _$CardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CardResponseToJson(this);
}

@JsonSerializable()
class FirmwareVersion {
  final int hotFix;
  final int major;
  final int minor;
  final String type;
  final String version;

  FirmwareVersion(this.hotFix, this.major, this.minor, this.type, this.version);

  factory FirmwareVersion.fromJson(Map<String, dynamic> json) => _$FirmwareVersionFromJson(json);

  Map<String, dynamic> toJson() => _$FirmwareVersionToJson(this);
}

@JsonSerializable()
class CardDataResponse {
  final String batchId;
  final String blockchainName;
  final String issuerName;
  final String manufacturerSignature;
  final String manufactureDateTime;
  final List<String> productMask;
  @JsonKey(includeIfNull: false)
  final String tokenContractAddress;
  @JsonKey(includeIfNull: false)
  final String tokenSymbol;
  @JsonKey(includeIfNull: false)
  final int tokenDecimal;

  CardDataResponse({
    this.batchId,
    this.blockchainName,
    this.issuerName,
    this.manufacturerSignature,
    this.manufactureDateTime,
    this.productMask,
    this.tokenContractAddress,
    this.tokenSymbol,
    this.tokenDecimal,
  });

  factory CardDataResponse.fromJson(Map<String, dynamic> json) => _$CardDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CardDataResponseToJson(this);
}

@JsonSerializable()
class Wallet {
  Wallet(this.index, this.status, this.publicKey);

  int index;
  WalletStatus status;
  String publicKey;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
  Map<String, dynamic> toJson() => _$WalletToJson(this);
}

enum WalletStatus {
  @JsonValue('Loaded')
  loaded,
  @JsonValue('Empty')
  empty,
}

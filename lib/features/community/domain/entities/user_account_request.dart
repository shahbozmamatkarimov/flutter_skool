import 'package:json_annotation/json_annotation.dart';

part 'user_account_request.g.dart';

@JsonSerializable()
class CommunityRequest {
  final String name;
  final String surname;
  final String phone;
  final String email;

  const CommunityRequest({
    required this.name,
    required this.surname,
    required this.phone,
    required this.email,
  });

  CommunityRequest copyWith({
    String? name,
    String? surname,
    String? email,
    String? phone,
  }) =>
      CommunityRequest(
        name: name ?? this.name,
        surname: surname ?? this.surname,
        email: email ?? this.email,
        phone: phone ?? this.phone,
      );

  factory CommunityRequest.fromJson(Map<String, dynamic> json) =>
      _$CommunityRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityRequestToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'community.g.dart';

@JsonSerializable()
class Community {
  final int id;
  final String? country;
  final String? city;
  final String? street;
  final String? houseNumber;
  final String? zipCode;
  final String? additional;

  @override
  String toString() {
    return 'Community{id: $id, country: $country, city: $city, street: $street, houseNumber: $houseNumber, zipCode: $zipCode, additional: $additional}';
  }

  const Community({
    required this.id,
    this.country,
    this.city,
    this.street,
    this.houseNumber,
    this.zipCode,
    this.additional,
  });

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityToJson(this);
}

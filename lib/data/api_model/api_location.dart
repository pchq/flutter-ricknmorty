import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_location.g.dart';

@JsonSerializable()
class ApiLocation extends Equatable {
  final String name;
  final String url;

  const ApiLocation({
    required this.name,
    required this.url,
  });

  factory ApiLocation.fromJson(Map<String, dynamic> json) => _$ApiLocationFromJson(json);

  Map<String, dynamic> toJson() => _$ApiLocationToJson(this);

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [name, url];
}

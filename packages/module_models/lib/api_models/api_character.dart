import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_character.freezed.dart';
part 'api_character.g.dart';

@freezed
class ApiCharacter with _$ApiCharacter {
  const factory ApiCharacter({
    /// The id of the character.
    required int id,

    /// The name of the character.
    required String name,

    /// The status of the character ('Alive', 'Dead' or 'unknown').
    required String status,

    /// The species of the character.
    required String species,

    /// The type or subspecies of the character.
    required String type,

    /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
    required String gender,

    /// Name and link to the character's origin location.
    required Map<String, String> origin,

    /// Name and link to the character's last known location endpoint.
    required Map<String, String> location,

    /// (url)	Link to the character's image. All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
    required String image,

    /// (urls)	List of episodes in which this character appeared.
    required List<String> episode,

    /// (url)	Link to the character's own URL endpoint.
    required String url,

    /// Time at which the character was created in the database.
    required String created,
  }) = _ApiCharacter;

  factory ApiCharacter.fromJson(Map<String, dynamic> json) => _$ApiCharacterFromJson(json);
}

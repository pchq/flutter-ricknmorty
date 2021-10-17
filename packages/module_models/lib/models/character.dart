import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';

enum CharacterAliveStatus { alive, dead, unknown }
enum CharacterGender { female, male, genderless, unknown }

@freezed
class Character with _$Character {
  const factory Character({
    /// The id of the character.
    required int id,

    /// The name of the character.
    required String name,

    /// The status of the character ('Alive', 'Dead' or 'unknown').
    required CharacterAliveStatus status,

    /// The species of the character.
    /// + The type or subspecies of the character
    required String species,

    /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
    required CharacterGender gender,

    /// Name of the character's origin location.
    required String origin,

    /// Id of the character's origin location.
    required int originId,

    /// Name of the character's last known location endpoint.
    required String location,

    /// Id of the character's last known location endpoint.
    required int locationId,

    /// (url)	Link to the character's image. All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
    required String image,

    /// List of episodes IDs in which this character appeared.
    required List<int> episodesId,

    /// Time at which the character was created in the database.
    required DateTime created,
  }) = _Character;
}

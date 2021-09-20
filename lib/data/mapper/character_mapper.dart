import 'package:ricknmorty/data/api_model/api_character.dart';
import 'package:ricknmorty/data/mapper/i_mapper.dart';
import 'package:ricknmorty/data/mapper/location_mapper.dart';
import 'package:ricknmorty/domain/model/character.dart';

class CharacterMapper implements IMapper<Character, ApiCharacter> {
  @override
  Character call(ApiCharacter apiCharacter) {
    return Character(
      id: apiCharacter.id,
      name: apiCharacter.name,
      status: _getStatus(apiCharacter.status),
      species: apiCharacter.species,
      type: apiCharacter.type,
      gender: _getGender(apiCharacter.gender),
      origin: LocationMapper()(apiCharacter.origin),
      location: LocationMapper()(apiCharacter.location),
      image: apiCharacter.image,
      episode: apiCharacter.episode,
      url: apiCharacter.url,
      created: DateTime.parse(apiCharacter.created),
    );
  }

  CharacterAliveStatus _getStatus(String value) => CharacterAliveStatus.values
      .firstWhere((element) => element.toString() == value.toLowerCase());
  CharacterGender _getGender(String value) =>
      CharacterGender.values.firstWhere((element) => element.toString() == value.toLowerCase());
}

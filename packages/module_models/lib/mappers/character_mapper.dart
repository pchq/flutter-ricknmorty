import '../module_models.dart';
import 'i_mapper.dart';

class CharacterMapper extends IMapper<Character, ApiCharacter> {
  @override
  Character call(ApiCharacter apiModel) {
    CharacterAliveStatus getStatus() {
      String status = apiModel.status;

      return CharacterAliveStatus.values.firstWhere(
        (element) => element.toString() == 'CharacterAliveStatus.${status.toLowerCase()}',
      );
    }

    CharacterGender getGender() {
      String gender = apiModel.gender;

      return CharacterGender.values.firstWhere(
        (element) => element.toString() == 'CharacterGender.${gender.toLowerCase()}',
      );
    }

    String getSpecies() =>
        '${apiModel.species} ${apiModel.type == "" ? "" : "(" + apiModel.type + ")"}';

    return Character(
      id: apiModel.id,
      name: apiModel.name,
      status: getStatus(),
      species: getSpecies(),
      gender: getGender(),
      origin: apiModel.origin['name'] ?? '',
      originId: getIdByUrl(apiModel.origin['url'] ?? ''),
      location: apiModel.location['name'] ?? '',
      locationId: getIdByUrl(apiModel.location['url'] ?? ''),
      image: apiModel.image,
      episodesId: apiModel.episode.map((e) => getIdByUrl(e)).toList(),
      created: DateTime.parse(apiModel.created),
    );
  }
}

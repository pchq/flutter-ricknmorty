import 'package:ricknmorty/data/api_model/api_episode.dart';
import 'package:ricknmorty/data/mapper/i_mapper.dart';
import 'package:ricknmorty/domain/model/episode.dart';

class EpisodeMapper implements IMapper<Episode, ApiEpisode> {
  @override
  Episode call(ApiEpisode apiEpisode) {
    return Episode(
      id: apiEpisode.id,
      name: apiEpisode.name,
      airDate: apiEpisode.airDate,
      episode: apiEpisode.episode,
      characters: apiEpisode.characters.map((e) => e as int).toList(),
      url: apiEpisode.url,
      created: DateTime.parse(apiEpisode.created),
    );
  }
}

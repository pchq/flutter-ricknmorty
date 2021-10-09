import 'package:ricknmorty/domain/model/episode.dart';

abstract class IEpisodesRepository {
  Future<List<Episode>> getEpisodesRepo(int page, List<int>? ids);
}

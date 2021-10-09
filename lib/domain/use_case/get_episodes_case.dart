import 'package:equatable/equatable.dart';

import 'package:ricknmorty/domain/model/episode.dart';
import 'package:ricknmorty/domain/repository/i_episodes_repository.dart';
import 'package:ricknmorty/domain/use_case/i_use_case.dart';

class GetEdisodesCase implements IUseCase<List<Episode>, GetEpisodesParams> {
  final IEpisodesRepository episodesRepository;

  GetEdisodesCase(this.episodesRepository);

  @override
  Future<List<Episode>> call(GetEpisodesParams params) async {
    return await episodesRepository.getEpisodesRepo(params.page, params.ids);
  }
}

class GetEpisodesParams extends Equatable {
  final int page;
  final List<int>? ids;

  const GetEpisodesParams({required this.page, this.ids});

  @override
  List<Object?> get props => [page, ids];
}

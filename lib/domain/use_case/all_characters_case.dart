import 'package:equatable/equatable.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/repository/i_characters_repository.dart';
import 'package:ricknmorty/domain/use_case/i_use_case.dart';

class AllCharactersCase implements IUseCase<List<Character>, PagenParams> {
  final ICharactersRepository charactersRepository;

  AllCharactersCase(this.charactersRepository);

  Future<List<Character>> call(PagenParams params) async {
    return await charactersRepository.getAllCharacters(params.page);
  }
}

class PagenParams extends Equatable {
  final int page;

  PagenParams({required this.page});

  @override
  List<Object?> get props => [page];
}

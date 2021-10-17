import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:module_models/models/character.dart';
import 'package:module_models/module_models.dart';

import '/src/repository/i_characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final ICharactersRepository charactersRepository;

  CharactersCubit({
    required this.charactersRepository,
  }) : super(CharactersInitial());

  int page = 1;
  CharactersFilter currentFilter = const CharactersFilter();

  void load([CharactersFilter? newFilter]) async {
    if (state is CharactersLoading) return;

    newFilter ??= const CharactersFilter();
    List<Character> oldCharacters = [];

    try {
      if (state is CharactersLoaded) {
        currentFilter = (state as CharactersLoaded).usedFilter;
        if (newFilter != currentFilter) {
          page = 1;
          currentFilter = newFilter;
          oldCharacters.clear();
        } else {
          oldCharacters = (state as CharactersLoaded).characters;
        }
      }

      emit(CharactersLoading(oldCharacters, isFirstLoading: page == 1));

      final List<Character> newCharacters =
          await charactersRepository.getCharacters(page, newFilter);

      page++;
      final characters = (state as CharactersLoading).oldCharacters;
      characters.addAll(newCharacters);

      emit(CharactersLoaded(characters: characters, usedFilter: newFilter));
    } catch (e) {
      emit(CharactersLoadingError(message: e.toString()));
    }
  }
}

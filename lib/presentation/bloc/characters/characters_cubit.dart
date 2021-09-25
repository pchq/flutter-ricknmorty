import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/use_case/get_characters_case.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final GetCharactersCase getCharactersCase;
  CharactersCubit({required this.getCharactersCase}) : super(CharactersInitial());

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

      final newCharacters =
          await getCharactersCase(GetCharactersParams(page: page, filter: newFilter));
      page++;
      final characters = (state as CharactersLoading).oldCharacters;
      characters.addAll(newCharacters);
      emit(CharactersLoaded(characters: characters, usedFilter: newFilter));
    } catch (e) {
      emit(CharactersError(message: e.toString()));
    }
  }
}

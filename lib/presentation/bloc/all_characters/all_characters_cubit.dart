import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/use_case/all_characters_case.dart';

part 'all_characters_state.dart';

class AllCharactersCubit extends Cubit<AllCharactersState> {
  final AllCharactersCase allCharactersCase;
  AllCharactersCubit({required this.allCharactersCase}) : super(AllCharactersInitial());

  int page = 1;
  void loadAllCharacters() async {
    if (state is AllCharactersLoading) return;

    try {
      var oldCharacters = <Character>[];
      if (state is AllCharactersLoaded) {
        oldCharacters = (state as AllCharactersLoaded).characters;
      }

      emit(AllCharactersLoading(oldCharacters, isFirstLoading: page == 1));
      final newCharacters = await allCharactersCase(PagenParams(page: page));
      page++;
      final characters = (state as AllCharactersLoading).oldCharacters;
      characters.addAll(newCharacters);
      emit(AllCharactersLoaded(characters: characters));
    } catch (e) {
      emit(AllCharactersError(message: e.toString()));
    }
  }
}

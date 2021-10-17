part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {
  final List<Character> oldCharacters;
  final bool isFirstLoading;

  CharactersLoading(
    this.oldCharacters, {
    this.isFirstLoading = false,
  });
}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;
  final CharactersFilter usedFilter;

  CharactersLoaded({
    required this.characters,
    required this.usedFilter,
  });
}

class CharactersLoadingError extends CharactersState {
  final String message;

  CharactersLoadingError({
    required this.message,
  });
}

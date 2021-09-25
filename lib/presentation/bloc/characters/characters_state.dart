part of 'characters_cubit.dart';

abstract class CharactersState extends Equatable {
  const CharactersState();

  @override
  List<Object> get props => [];
}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {
  final List<Character> oldCharacters;
  final bool isFirstLoading;

  const CharactersLoading(
    this.oldCharacters, {
    this.isFirstLoading = false,
  });

  @override
  List<Object> get props => [oldCharacters];
}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;
  final CharactersFilter usedFilter;

  const CharactersLoaded({
    required this.characters,
    required this.usedFilter,
  });

  @override
  List<Object> get props => [characters];
}

class CharactersError extends CharactersState {
  final String message;

  const CharactersError({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

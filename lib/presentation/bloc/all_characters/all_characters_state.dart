part of 'all_characters_cubit.dart';

abstract class AllCharactersState extends Equatable {
  const AllCharactersState();

  @override
  List<Object> get props => [];
}

class AllCharactersInitial extends AllCharactersState {}

class AllCharactersLoading extends AllCharactersState {
  final List<Character> oldCharacters;
  final bool isFirst;

  const AllCharactersLoading(
    this.oldCharacters, {
    this.isFirst = false,
  });

  @override
  List<Object> get props => [oldCharacters];
}

class AllCharactersLoaded extends AllCharactersState {
  final List<Character> characters;

  const AllCharactersLoaded({
    required this.characters,
  });

  @override
  List<Object> get props => [characters];
}

class AllCharactersError extends AllCharactersState {
  final String message;

  const AllCharactersError({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

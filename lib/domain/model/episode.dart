import 'package:equatable/equatable.dart';
import 'package:ricknmorty/domain/model/character.dart';

class Episode extends Equatable {
  /// The id of the episode.
  final int id;

  /// The name of the episode.
  final String name;

  /// The air date of the episode.
  final String airDate;

  /// The code of the episode.
  final String episode;

  /// (urls) List of characters who have been seen in the episode.
  final List<Character> characters;

  /// (url) Link to the episode's own endpoint.
  final String url;

  ///  Time at which the episode was created in the database.
  final DateTime created;

  const Episode({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        airDate,
        episode,
        characters,
        url,
        created,
      ];
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_episode.g.dart';

@JsonSerializable()
class ApiEpisode extends Equatable {
  /// The id of the episode.
  final int id;

  /// The name of the episode.
  final String name;

  /// The air date of the episode.
  @JsonKey(name: 'air_date')
  final String airDate;

  /// The code of the episode.
  final String episode;

  /// (urls) List of characters who have been seen in the episode.
  final List<String> characters;

  /// (url) Link to the episode's own endpoint.
  final String url;

  ///  Time at which the episode was created in the database.
  final String created;

  const ApiEpisode({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });

  factory ApiEpisode.fromJson(Map<String, dynamic> json) => _$ApiEpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$ApiEpisodeToJson(this);

  @override
  bool? get stringify => true;

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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiCharacter _$$_ApiCharacterFromJson(Map<String, dynamic> json) =>
    _$_ApiCharacter(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      origin: Map<String, String>.from(json['origin'] as Map),
      location: Map<String, String>.from(json['location'] as Map),
      image: json['image'] as String,
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
      created: json['created'] as String,
    );

Map<String, dynamic> _$$_ApiCharacterToJson(_$_ApiCharacter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
    };

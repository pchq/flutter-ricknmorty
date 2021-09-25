import 'package:equatable/equatable.dart';

import 'package:ricknmorty/common/helper.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/repository/i_characters_repository.dart';
import 'package:ricknmorty/domain/use_case/i_use_case.dart';

class GetCharactersCase implements IUseCase<List<Character>, GetCharactersParams> {
  final ICharactersRepository charactersRepository;

  GetCharactersCase(this.charactersRepository);

  @override
  Future<List<Character>> call(GetCharactersParams params) async {
    return await charactersRepository.getCharactersRepo(params.page, params.filter);
  }
}

class GetCharactersParams extends Equatable {
  final int page;
  final CharactersFilter filter;

  const GetCharactersParams({required this.page, required this.filter});

  @override
  List<Object?> get props => [page, filter];
}

class CharactersFilter extends Equatable {
  final String? name;
  final CharacterAliveStatus? status;
  final CharacterGender? gender;

  const CharactersFilter({
    this.name,
    this.status,
    this.gender,
  });

  String toQueryString() {
    String s = '';
    if (name != null) {
      s += '&name=$name';
    }
    if (status != null) {
      s += '&status=${Helper.enumValue(status)}';
    }
    if (gender != null) {
      s += '&gender=${Helper.enumValue(gender)}';
    }
    return s;
  }

  @override
  List<Object?> get props => [
        name,
        status,
        gender,
      ];

  @override
  bool? get stringify => true;
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ricknmorty/common/rnm_icons.dart';
import 'package:ricknmorty/common/theme_config.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/domain/use_case/get_characters_case.dart';
import 'package:ricknmorty/presentation/bloc/characters/characters_cubit.dart';
import 'package:ricknmorty/presentation/widgets/custom_radio_list.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  late CharactersCubit charactersCubit;

  late CharactersFilter currentFilter;

  CharacterAliveStatus? _status;
  CharacterGender? _gender;
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    charactersCubit = context.read<CharactersCubit>();
    currentFilter = charactersCubit.currentFilter;
    _status = currentFilter.status;
    _gender = currentFilter.gender;
    _nameController.text = currentFilter.name ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const double padding = 15;

    return Wrap(
      children: [
        Container(
          padding: const EdgeInsets.only(left: padding),
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 24,
                    color: ThemeConfig.green.withOpacity(.8),
                  ),
                ),
              ),
              IconButton(
                iconSize: 28,
                padding: EdgeInsets.zero,
                onPressed: () => _setNewFilter(true),
                icon: Icon(
                  Icons.delete_forever_outlined,
                  color: ThemeConfig.orange.withOpacity(.8),
                ),
              ),
              IconButton(
                iconSize: 28,
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.close,
                  color: ThemeConfig.green.withOpacity(.8),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          margin: const EdgeInsets.only(bottom: 20),
          child: TextFormField(
            controller: _nameController,
            onChanged: (value) {
              _setNewFilter();
            },
            style: const TextStyle(
              fontSize: 20,
            ),
            cursorColor: ThemeConfig.green,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ThemeConfig.green, width: 1),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ThemeConfig.mediumGrey, width: 1),
              ),
              labelText: 'Name',
              alignLabelWithHint: true,
              labelStyle: TextStyle(
                color: ThemeConfig.lightGrey,
                fontSize: 20,
              ),
              floatingLabelStyle: TextStyle(
                color: ThemeConfig.green,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: padding - 5),
          margin: const EdgeInsets.only(bottom: 20),
          child: _buildSection(
              'Status', CharacterAliveStatus.values, currentFilter.status, RnmIcons.deadalive2),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: padding - 5),
          margin: const EdgeInsets.only(bottom: 20),
          child: _buildSection(
              'Gender', CharacterGender.values, currentFilter.gender, RnmIcons.multigender),
        ),
      ],
    );
  }

  Widget _buildSection(String title, List radioItems, dynamic selected, IconData icon) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            margin: const EdgeInsets.only(bottom: 5),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    icon,
                    color: ThemeConfig.green.withOpacity(.5),
                    size: 16,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: ThemeConfig.green,
                  ),
                ),
              ],
            ),
          ),
          CustomRadioList(
            items: radioItems,
            selected: selected,
            onTap: (value) {
              if (title == 'Gender') {
                _gender = value;
                _setNewFilter();
              } else if (title == 'Status') {
                _status = value;
                _setNewFilter();
              }
            },
          ),
        ],
      );

  void _setNewFilter([bool clean = false]) {
    CharactersFilter filter = clean
        ? const CharactersFilter()
        : CharactersFilter(
            name: _nameController.text,
            status: _status,
            gender: _gender,
          );
    if (filter != currentFilter) {
      charactersCubit.load(filter);
      setState(() {
        currentFilter = filter;
        if (clean) {
          _nameController.text = '';
        }
        _status = currentFilter.status;
        _gender = currentFilter.gender;
      });
    }
  }
}

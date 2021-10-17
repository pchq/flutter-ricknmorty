import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:layer_domain/layer_domain.dart';
import 'package:module_models/module_models.dart';

import '/common/rnm_icons.dart';
import '/common/theme_config.dart';
import '/widgets/character_card.dart';
import '/widgets/circle_loader.dart';
import '/widgets/filter.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();
  void _setupScrollController(BuildContext context) {
    CharactersCubit charactersCubit = context.read<CharactersCubit>();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge && _scrollController.position.pixels != 0) {
        charactersCubit.load(charactersCubit.currentFilter);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _setupScrollController(context);
    List<Character> characters = [];
    bool isLoading = false;
    bool isFilterSet = false;

    return BlocConsumer<CharactersCubit, CharactersState>(
      listener: (context, state) {
        if (state is CharactersLoadingError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        if (state is CharactersLoading && state.isFirstLoading) {
          return const CircleLoader();
        } else if (state is CharactersLoading) {
          characters = state.oldCharacters;
        } else if (state is CharactersLoaded) {
          characters = state.characters;
        }

        isLoading = state is CharactersLoading;
        isFilterSet = state is CharactersLoaded && state.usedFilter != const CharactersFilter();

        return Scaffold(
          appBar: AppBar(
            title: const Text('Rick\'n\'Morty'),
            actions: [
              IconButton(
                onPressed: () => _showFilter(context),
                icon: Icon(
                  Icons.filter_list,
                  color: isFilterSet ? ThemeConfig.green : ThemeConfig.textColor,
                  size: 30,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: characters.isEmpty
                ? Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Nobody found',
                          style: TextStyle(fontSize: 24, color: ThemeConfig.lightGrey),
                        ),
                        Icon(
                          RnmIcons.fuck,
                          size: 36,
                          color: ThemeConfig.lightGrey,
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    controller: _scrollController,
                    itemCount: characters.length + (isLoading ? 1 : 0),
                    itemBuilder: (BuildContext context, int index) {
                      return index < characters.length
                          ? CharacterCard(characters[index])
                          : const CircleLoader();
                    },
                  ),
          ),
        );
      },
    );
  }

  void _showFilter(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const Filter(),
        );
      },
    );
  }
}

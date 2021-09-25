import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/presentation/bloc/characters/characters_cubit.dart';
import 'package:ricknmorty/presentation/widgets/character_card.dart';
import 'package:ricknmorty/presentation/widgets/circle_loader.dart';
import 'package:ricknmorty/presentation/widgets/filter.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick\'n\'Morty'),
        actions: [
          IconButton(
            onPressed: () => _showFilter(context),
            icon: const Icon(Icons.filter_list),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: BlocConsumer<CharactersCubit, CharactersState>(
          listener: (context, state) {
            if (state is CharactersError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            bool isLoading = false;
            if (state is CharactersLoading && state.isFirstLoading) {
              return const CircleLoader();
            } else if (state is CharactersLoading) {
              characters = state.oldCharacters;
            } else if (state is CharactersLoaded) {
              characters = state.characters;
            }

            isLoading = state is CharactersLoading;

            return ListView.builder(
              controller: _scrollController,
              itemCount: characters.length + (isLoading ? 1 : 0),
              itemBuilder: (BuildContext context, int index) {
                return index < characters.length
                    ? CharacterCard(characters[index])
                    : const CircleLoader();
              },
            );
          },
        ),
      ),
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
        });
  }
}

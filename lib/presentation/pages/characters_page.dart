import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/presentation/bloc/all_characters/all_characters_cubit.dart';
import 'package:ricknmorty/presentation/widgets/character_card.dart';
import 'package:ricknmorty/presentation/widgets/circle_loader.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({Key? key}) : super(key: key);

  // ToDo Вынести список в отдельный виджет
  final ScrollController _scrollController = ScrollController();
  void _setupScrollController(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge && _scrollController.position.pixels != 0) {
        context.read<AllCharactersCubit>().loadAllCharacters();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _setupScrollController(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick\'n\'Morty'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: BlocBuilder<AllCharactersCubit, AllCharactersState>(
          builder: (context, state) {
            bool isLoading = false;
            List<Character> characters = [];
            if (state is AllCharactersLoading && state.isFirstLoading) {
              return const CircleLoader();
            } else if (state is AllCharactersLoading) {
              isLoading = true;
              characters = state.oldCharacters;
            } else if (state is AllCharactersLoaded) {
              isLoading = false;
              characters = state.characters;
            } else if (state is AllCharactersError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Unexpected bloc state error: ${state.toString()}')));
            }
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
}

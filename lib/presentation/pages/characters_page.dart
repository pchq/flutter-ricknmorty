import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/presentation/bloc/all_characters/all_characters_cubit.dart';
import 'package:ricknmorty/presentation/widgets/character_card.dart';
import 'package:ricknmorty/presentation/widgets/circle_loader.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick\'n\'Morty'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: BlocBuilder<AllCharactersCubit, AllCharactersState>(
          builder: (context, state) {
            if (state is AllCharactersLoading) {
              return const CircleLoader();
            } else if (state is AllCharactersLoaded) {
              final List<Character> personsList = state.characters;
              return ListView.builder(
                itemCount: personsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CharacterCard(personsList[index]);
                },
              );
            } else if (state is AllCharactersError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
              return Container();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Unexpected bloc state error: ${state.toString()}')));
              return Container();
            }
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricknmorty/common/theme_config.dart';

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
            onPressed: () => _showFilter(context),
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

  void _showFilter(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Filter',
                        style: TextStyle(
                          fontSize: 24,
                          color: ThemeConfig.lightGrey,
                        ),
                      ),
                      IconButton(
                        iconSize: 28,
                        padding: EdgeInsets.zero,
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.close,
                          color: ThemeConfig.lightGrey,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      onChanged: (value) {},
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Name',
                        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 13),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        Text('Status'),
                        Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCheckBox(title: 'Alive'),
                            CustomCheckBox(title: 'Dead'),
                            CustomCheckBox(title: 'Unknown'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        Text('Gender'),
                        Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCheckBox(title: 'Male'),
                            CustomCheckBox(title: 'Female'),
                            CustomCheckBox(title: 'Genderless'),
                            CustomCheckBox(title: 'Unknown'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   children: [
                  //     Text('Species'),
                  //     Flex(
                  //       direction: Axis.horizontal,
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         CustomCheckBox(title: 'Human'),
                  //         CustomCheckBox(title: 'Alien'),
                  //         CustomCheckBox(title: 'Robot'),
                  //         CustomCheckBox(title: 'Humanoid'),
                  //         CustomCheckBox(title: '...'),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          );
        });
  }
}

class CustomCheckBox extends StatefulWidget {
  final String title;
  CustomCheckBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          setState(() {
            _value = !_value;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(widget.title),
              ),
              Icon(
                _value ? Icons.check_box_outlined : Icons.check_box_outline_blank,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ricknmorty/common/rnm_icons.dart';
import 'package:ricknmorty/common/theme_config.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/presentation/widgets/cached_image.dart';

class CharacterPage extends StatelessWidget {
  final Character person;
  const CharacterPage(this.person, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imgHeight = MediaQuery.of(context).size.height * .5;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 48,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                person.name,
                textAlign: TextAlign.center,
              ),
              titlePadding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              background: Hero(
                tag: 'img_${person.id}',
                child: Material(
                  type: MaterialType.transparency,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CachedImage(person.image),
                      Container(
                        height: imgHeight,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [
                              .1,
                              1,
                            ],
                            colors: [
                              Colors.black.withOpacity(0),
                              Colors.black,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            expandedHeight: imgHeight,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildGender(),
                  _buildAliveStatus(),
                  _buildInfoSection('Species',
                      '${person.species} ${person.type == "" ? "" : "(" + person.type + ")"}'),
                  _buildInfoSection('Homeland', person.origin.name),
                  _buildInfoSection('Last location', person.location.name),
                  _buildInfoSection('Episodes', person.episode.length.toString()),
                  _buildInfoSection('Created', DateFormat('d MMMM yyyy').format(person.created)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGender() {
    final Icon icon;
    final String label;
    switch (person.gender) {
      case CharacterGender.male:
        icon = const Icon(RnmIcons.male, color: ThemeConfig.blue);
        label = 'Male';
        break;
      case CharacterGender.female:
        icon = const Icon(RnmIcons.female, color: ThemeConfig.pink);
        label = 'Female';
        break;
      case CharacterGender.genderless:
        icon = const Icon(RnmIcons.genderless, color: ThemeConfig.green);
        label = 'Genderless';
        break;
      default: // unknown
        icon = const Icon(RnmIcons.unknowngender, color: ThemeConfig.yellow);
        label = 'Unknown gender';
    }
    return _buildIconSection(icon, label);
  }

  Widget _buildAliveStatus() {
    final Icon icon;
    final String label;
    switch (person.status) {
      case CharacterAliveStatus.alive:
        icon = const Icon(RnmIcons.alive, color: ThemeConfig.red);
        label = 'Alive';
        break;
      case CharacterAliveStatus.dead:
        icon = const Icon(RnmIcons.dead, color: ThemeConfig.lightGrey);
        label = 'Dead';
        break;
      default: // unknown
        icon = const Icon(RnmIcons.deadalive2, color: ThemeConfig.orange);
        label = 'Dead or alive unknown';
    }
    return _buildIconSection(icon, label);
  }

  Widget _buildIconSection(Icon icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Center(
              child: icon,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              // color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInfoSection(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text(
            '$title: ',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

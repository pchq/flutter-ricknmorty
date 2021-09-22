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
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  person.name,
                  textAlign: TextAlign.center,
                ),
              ),
              background: Stack(
                children: [
                  CachedImage(person.image),
                  Container(
                    height: imgHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [
                          .26,
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
            expandedHeight: imgHeight - 25,
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
                  _buildInfoSection(
                      'created', DateFormat('dd MMMM yyyy H:mm').format(person.created)),
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
        icon = Icon(RnmIcons.male, color: ThemeConfig.blue);
        label = 'Male';
        break;
      case CharacterGender.female:
        icon = Icon(RnmIcons.female, color: ThemeConfig.pink);
        label = 'Female';

        break;
      case CharacterGender.genderless:
        icon = Icon(RnmIcons.genderless, color: ThemeConfig.green);
        label = 'Genderless';
        break;
      default: // unknown
        icon = Icon(RnmIcons.unknowngender, color: ThemeConfig.yellow);
        label = 'Unknown gender';
    }
    return _buildIconSection(icon, label);
  }

  Widget _buildAliveStatus() {
    final Icon icon;
    final String label;
    switch (person.status) {
      case CharacterAliveStatus.alive:
        icon = Icon(RnmIcons.alive, color: ThemeConfig.red);
        label = 'Alive';
        break;
      case CharacterAliveStatus.dead:
        icon = Icon(RnmIcons.dead, color: ThemeConfig.lightGrey);
        label = 'Dead';
        break;
      default: // unknown
        icon = Icon(RnmIcons.deadalive, color: ThemeConfig.orange);
        label = 'Dead or alive unknown';
    }
    return _buildIconSection(icon, label);
  }

  Widget _buildIconSection(Icon icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          icon,
          Text(
            ' $text',
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

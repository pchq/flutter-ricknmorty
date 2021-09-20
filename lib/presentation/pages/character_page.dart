import 'package:flutter/material.dart';
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
              title: Text(person.name),
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
                  // _buildGender(),
                  // _buildAliveStatus(),
                  _buildInfoSection('Species', person.species),
                  _buildInfoSection('Homeland', person.origin.name),
                  _buildInfoSection('Last location', person.location.name),
                  _buildInfoSection('Episodes', person.episode.length.toString()),
                  _buildInfoSection('created', person.created.toString()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildGender() {
  //   final Icon icon;
  //   switch (person.gender) {
  //     case 'Male':
  //       icon = Icon(RnmIcons.male, color: Colors.blue);
  //       break;
  //     case 'Female':
  //       icon = Icon(RnmIcons.female, color: Colors.pink);
  //       break;
  //     case 'Genderless':
  //       icon = Icon(RnmIcons.genderless_1, color: Colors.purple);
  //       break;
  //     default: // unknown
  //       icon = Icon(RnmIcons.unknowngender, color: Colors.black);
  //   }
  //   return _buildIconSection(icon, person.gender);
  // }

  // Widget _buildAliveStatus() {
  //   final Icon icon;
  //   switch (person.status) {
  //     case 'Alive':
  //       icon = Icon(RnmIcons.alive, color: Colors.red);
  //       break;
  //     case 'Dead':
  //       icon = Icon(RnmIcons.dead);
  //       break;
  //     default: // unknown
  //       icon = Icon(RnmIcons.deadalive, color: Colors.blueGrey);
  //   }
  //   return _buildIconSection(icon, person.status);
  // }

  Widget _buildIconSection(Icon icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
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
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

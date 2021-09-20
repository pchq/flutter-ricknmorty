import 'package:flutter/material.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/presentation/pages/character_page.dart';
import 'package:ricknmorty/presentation/widgets/cached_image.dart';

class CharacterCard extends StatelessWidget {
  final Character person;
  const CharacterCard(this.person, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CharacterPage(person)),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.only(bottom: 5),
        color: Colors.grey[200],
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: CachedImage(person.image),
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                Text(
                  person.name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

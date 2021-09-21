import 'package:flutter/material.dart';
import 'package:ricknmorty/common/theme_config.dart';
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
        margin: const EdgeInsets.only(bottom: 10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: ThemeConfig.mediumGrey,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: ThemeConfig.mediumGrey,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
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

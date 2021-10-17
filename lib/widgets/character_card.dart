import 'package:flutter/material.dart';
import 'package:module_models/module_models.dart';

import 'package:ricknmorty/common/theme_config.dart';
import '/pages/character_page.dart';
import '/widgets/cached_image.dart';

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
        margin: const EdgeInsets.symmetric(vertical: 10),
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: ThemeConfig.mediumGrey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Hero(
              tag: 'img_${person.id}',
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: ThemeConfig.mediumGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: CachedImage(person.image),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      person.name,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ricknmorty/common/rnm_icons.dart';
import 'package:ricknmorty/common/theme_config.dart';
import 'package:ricknmorty/domain/model/character.dart';
import 'package:ricknmorty/presentation/widgets/custom_radio_list.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double padding = 15;
    return Wrap(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Filter',
                style: TextStyle(
                  fontSize: 24,
                  color: ThemeConfig.green.withOpacity(.8),
                ),
              ),
              IconButton(
                iconSize: 28,
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.close,
                  color: ThemeConfig.green.withOpacity(.8),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          margin: const EdgeInsets.only(bottom: 20),
          child: TextFormField(
            onChanged: (value) {},
            style: const TextStyle(
              fontSize: 20,
            ),
            cursorColor: ThemeConfig.green,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ThemeConfig.green, width: 1),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ThemeConfig.mediumGrey, width: 1),
              ),
              labelText: 'Name',
              alignLabelWithHint: true,
              labelStyle: TextStyle(
                color: ThemeConfig.lightGrey,
                fontSize: 20,
              ),
              floatingLabelStyle: TextStyle(
                color: ThemeConfig.green,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: padding - 5),
          margin: const EdgeInsets.only(bottom: 20),
          child: _buildSection('Status', CharacterAliveStatus.values, RnmIcons.deadalive2),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: padding - 5),
          margin: const EdgeInsets.only(bottom: 20),
          child: _buildSection('Gender', CharacterGender.values, RnmIcons.multigender),
        ),
      ],
    );
  }

  Widget _buildSection(String title, List radioItems, IconData icon) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            margin: const EdgeInsets.only(bottom: 5),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    icon,
                    color: ThemeConfig.green.withOpacity(.5),
                    size: 16,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: ThemeConfig.green,
                  ),
                ),
              ],
            ),
          ),
          CustomRadioList(
            items: radioItems,
            onTap: (value) {
              print(value);
            },
          ),
        ],
      );
}

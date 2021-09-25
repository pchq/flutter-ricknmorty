import 'package:flutter/material.dart';
import 'package:ricknmorty/common/helper.dart';
import 'package:ricknmorty/common/theme_config.dart';

class CustomRadioList extends StatefulWidget {
  final List items;
  final dynamic selected;
  final ValueChanged? onTap;

  const CustomRadioList({
    Key? key,
    required this.items,
    this.selected,
    this.onTap,
  }) : super(key: key);

  @override
  _CustomRadioListState createState() => _CustomRadioListState();
}

class _CustomRadioListState extends State<CustomRadioList> {
  dynamic _selected;

  @override
  Widget build(BuildContext context) {
    _selected = widget.selected;
    return Wrap(
      children: _buildList(),
    );
  }

  List<Widget> _buildList() {
    List<Widget> list = [];

    list = widget.items
        .map((item) => Container(
              margin: EdgeInsets.only(right: item != widget.items.last ? 5 : 0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selected = _selected != item ? item : null;
                  });
                  if (widget.onTap != null) {
                    widget.onTap!(_selected);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          Helper.enumValue(item, true),
                          style: TextStyle(
                            fontSize: 20,
                            color:
                                _selected == item ? ThemeConfig.textColor : ThemeConfig.lightGrey,
                          ),
                        ),
                      ),
                      _selected == item
                          ? const Icon(
                              Icons.check_box_outlined,
                              color: ThemeConfig.textColor,
                            )
                          : const Icon(
                              Icons.check_box_outline_blank,
                              color: ThemeConfig.mediumGrey,
                            ),
                    ],
                  ),
                ),
              ),
            ))
        .toList();
    return list;
  }
}

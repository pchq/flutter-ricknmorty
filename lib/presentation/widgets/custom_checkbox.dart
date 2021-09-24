import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final String title;
  final bool value;
  final void Function()? onTap;
  const CustomCheckbox({
    Key? key,
    required this.title,
    this.value = false,
    this.onTap,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap ??
          () {
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
    );
  }
}

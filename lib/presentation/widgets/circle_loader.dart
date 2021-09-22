import 'package:flutter/material.dart';
import 'package:ricknmorty/common/theme_config.dart';

class CircleLoader extends StatelessWidget {
  const CircleLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: CircularProgressIndicator(
          color: ThemeConfig.green,
        ),
      ),
    );
  }
}
